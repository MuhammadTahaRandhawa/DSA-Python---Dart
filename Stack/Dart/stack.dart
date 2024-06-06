class Node {
  dynamic value;
  Node? next;
  Node(dynamic value)
      : value = value,
        next = null;
}

class Stack {
  Stack(dynamic value) {
    Node node = Node(value);
    top = node;
    height = 1;
  }

  Node? top;
  int height = 0;

  void push(dynamic value) {
    if (height == 0) {
      Stack(value);
    } else {
      Node newNode = Node(value);
      newNode.next = top!;
      top = newNode;
      height++;
    }
  }

  void pop() {
    if (height == 0) {
      return;
    } else {
      Node? newTop = top!.next;
      top!.next = null;
      top = newTop;
      height--;
    }
  }

  void printList() {
    Node? temp = top;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  final myStack = Stack(5);
  myStack.push(4);
  myStack.push(3);
  myStack.pop();
  myStack.printList();
}
