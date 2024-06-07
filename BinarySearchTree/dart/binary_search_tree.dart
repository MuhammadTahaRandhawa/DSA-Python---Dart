class Node {
  dynamic value;
  Node? left;
  Node? right;
  Node(this.value);
}

class BinarySearchTree {
  Node? root;

  bool insert(dynamic value) {
    Node newNode = Node(value);
    if (root == null) {
      root = newNode;
      return true;
    }
    Node temp = root!;

    while (true) {
      if (newNode.value == temp.value) {
        return false;
      }
      if (newNode.value < temp.value) {
        if (temp.left == null) {
          temp.left = newNode;
          return true;
        } else {
          temp = temp.left!;
        }
      } else {
        if (temp.right == null) {
          temp.right = newNode;
          return true;
        } else {
          temp = temp.right!;
        }
      }
    }
  }
}

void main(List<String> args) {
  BinarySearchTree binarySearchTree = BinarySearchTree();
  binarySearchTree.insert(6);
  binarySearchTree.insert(7);
  binarySearchTree.insert(4);

  print(binarySearchTree.root!.value);
  print(binarySearchTree.root!.left!.value);
  print(binarySearchTree.root!.right!.value);
}
