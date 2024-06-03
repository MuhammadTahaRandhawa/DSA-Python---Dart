class Node {
  Node(this.value);
  dynamic value;
  Node? next;
}

class LinkedList {
  LinkedList(dynamic value) {
    Node newNode = Node(value);
    this.head = newNode;
    this.tail = newNode;
    this.length = 1;
  }

  int length = 0;
  Node? head;
  Node? tail;

  //print the whole linked list
  bool? printList() {
    if (length == 0) {
      return null;
    }
    Node? temp = head!;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
    return true;
  }

  //push new node to list
  void push(dynamic value) {
    if (length == 0) {
      LinkedList(value);
    } else {
      Node newNode = Node(value);
      tail!.next = newNode;
      tail = newNode;
      length++;
    }
  }

  //pop from end
  bool pop() {
    if (length == 0) {
      return false;
    } else {
      Node temp = head!;
      Node pre = head!;
      while (temp.next != null) {
        pre = temp;
        temp = temp.next!;
      }

      pre.next = null;
      tail = pre;
      length--;
      return true;
    }
  }

  //prepend listf
  void insertAtStart(dynamic value) {
    if (length == 0) {
      LinkedList(value);
    } else {
      Node newHead = Node(value);
      newHead.next = head;
      head = newHead;
      length++;
    }
  }

  bool popFirst() {
    if (length == 0) {
      return false;
    }
    Node? newHead = head!.next;
    head = newHead;
    length--;
    return true;
  }

  Node? getNode(int index) {
    if (length == 0 || index + 1 > length || index < 0) {
      return null;
    }
    // else if (index == 1) {
    //   return head;
    //}
    else {
      Node temp = head!;
      for (int i = 0; i < index; i++) {
        temp = temp.next!;
      }
      return temp;
    }
  }

  bool setIndex(dynamic value, int index) {
    Node? node = getNode(index);
    if (node != null) {
      node.value = value;
      return true;
    } else {
      return false;
    }
  }

  bool insertAtIndex(dynamic value, int index) {
    if (index < 0 || index > length) {
      return false;
    }
    if (index == 0) {
      insertAtStart(value);
    } else if (index == length) {
      push(value);
    } else {
      Node node = Node(value);
      Node temp = head!;
      for (var i = 0; i < index - 1; i++) {
        temp = temp.next!;
      }
      node.next = temp.next;
      temp.next = node;
    }
    return true;
  }

  bool removeItem(int index) {
    if (index < 0 || index >= length) {
      return false;
    }
    if (index == 0) {
      popFirst();
    } else if (index == length - 1) {
      pop();
    } else {
      Node temp = head!;
      for (int i = 0; i < index - 1; i++) {
        temp = temp.next!;
      }
      Node removed = temp.next!;
      Node? next = removed.next;
      temp.next = next;
    }
    return true;
  }
}

void main() {
  LinkedList myLinkedList = LinkedList(4);
  myLinkedList.push(5);
  myLinkedList.push(10);
  myLinkedList.push(20);
  myLinkedList.removeItem(3);
  myLinkedList.printList();
}
