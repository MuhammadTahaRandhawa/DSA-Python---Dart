class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  bool hasCycle(ListNode? head) {
    // if (head == null) {
    //   return false;
    // }
    ListNode? slow = head;
    ListNode? fast = head;

    while (fast?.next != null) {
      fast = fast!.next!.next;
      slow = slow!.next;

      if (fast == slow) {
        return true;
      }
    }
    return false;
  }
}

void main() {
  ListNode a = ListNode(1);
  ListNode b = ListNode(2);
  a.next = b;
  ListNode c = ListNode(3);
  b.next = c;
  c.next = a;
  // ListNode d = ListNode(4);
  // c.next = d;
  Solution solution = Solution();
  final sol = solution.hasCycle(a);
  print(sol);
}
