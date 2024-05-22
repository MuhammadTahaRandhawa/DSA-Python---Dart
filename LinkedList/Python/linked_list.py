class Node:
    def __init__(self, value):
        self.value = value
        self.next = None


class LinkedList:
    def __init__(self, value):
        newNode = Node(value)
        self.head = newNode
        self.tail = newNode
        self.length = 1

    def printList(self):
        temp = self.head
        while temp is not None:
            print(temp.value)
            temp = temp.next

    def append(self, value):
        if self.head is None:
            self.__init__(value)
        else:
            newNode = Node(value)
            self.tail.next = newNode
            self.tail = newNode
        self.length += 1
        return True

    def pop(self):
        if self.head == self.tail:
            self.head = None
            self.tail = None
        else:
            temp = self.head
            pre = self.head
            while temp.next is not None:
                pre = temp
                temp = temp.next
            pre.next = None
            self.tail = pre
        self.length -= 1
        return True

    def prepend(self, value):
        if self.length == 0:
            self.__init__(value)
        else:
            newNode = Node(value)
            oldHead = self.head
            self.head = newNode
            self.head.next = oldHead
        self.length += 1
        return True

    def popFirst(self):
        if self.length == 0:
            return None
        if self.length == 1:
            self.head = None
            self.tail = None
        else:
            self.head = self.head.next
        self.length -= 1
        return True

    def get(self, index: int):
        if self.length == 0 or self.length <= index or index < 0:
            return None
        else:
            val = self.head
            for i in range(index):
                val = val.next
            return val

    def set_value(self, index: int, value):
        node = self.get(index)
        if node:
            node.value = value
            return True
        else:
            return False

    def insert(self, index: int, value):
        if index < 0 or index > self.length:
            return False
        elif index == 0:
            return self.prepend(value)
        elif index == self.length:
            return self.append(value)
        else:
            newNode = Node(value)
            temp = self.get(index - 1)
            newNode.next = temp.next
            temp.next = newNode
        return True

    def remove_item(self, index: int):
        if index < 0 or index + 1 > self.length:
            return False
        elif index == 0:
            return self.popFirst()
        elif index == self.length - 1:
            return self.pop()
        else:
            prevItem = self.get(index - 1)
            item = prevItem.next
            prevItem.next = item.next
        return True


myLinkedList = LinkedList(4)

myLinkedList.append(10)
myLinkedList.append(45)

myLinkedList.printList()

myLinkedList.remove_item(1)
print('after')

myLinkedList.printList()



