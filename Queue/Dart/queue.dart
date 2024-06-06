class Node {
  dynamic value;
  Node? next;
  Node(dynamic value)
      : value = value,
        next = null;
}

class Queue {
  Node? first;
  Node? last;
  int length = 0;

  Queue(dynamic value) {
    Node node = Node(value);
    first = node;
    last = node;
    length = 1;
  }

  void enqueue(dynamic value) {
    if (length == 0) {
      Queue(value);
    } else {
      Node newNode = Node(value);
      last!.next = newNode;
      last = newNode;
      length++;
    }
  }

  void dequeue() {
    if (length == 0) {
      return;
    } else {
      Node? newFirst = first!.next;
      first!.next = null;
      first = newFirst;
      length--;
    }
  }

  void printQueue() {
    if (length == 0) {
      return null;
    } else {
      Node? temp = first;
      while (temp != null) {
        print(temp.value);
        temp = temp.next;
      }
    }
  }
}

void main(List<String> args) {
  Queue myQueue = Queue(5);
  myQueue.enqueue(3);
  myQueue.enqueue(8);
  myQueue.dequeue();
  myQueue.printQueue();
}
