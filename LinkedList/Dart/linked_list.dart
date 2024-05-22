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
      print(
        'node ${pre.value}',
      );
      print(
        'node ${temp.value}',
      );
      pre.next = null;
      tail = pre;
      length--;
      return true;
    }
  }
}

void main() {
  LinkedList myLinkedList = LinkedList(4);
  myLinkedList.push(5);
  myLinkedList.push(10);
  myLinkedList.push(20);
  myLinkedList.pop();
  myLinkedList.printList();
}
