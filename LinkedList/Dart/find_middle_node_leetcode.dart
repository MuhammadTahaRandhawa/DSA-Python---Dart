class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    ListNode? middle = head;
    ListNode? end = head;
    if (end == null) {
      return null;
    }
    while (end?.next != null) {
      end = end!.next!.next;
      middle = middle!.next;
    }
    return middle;
  }
}

void main() {
  ListNode a = ListNode(1);
  // ListNode b = ListNode(2);
  // a.next = b;
  // ListNode c = ListNode(3);
  // b.next = c;
  // ListNode d = ListNode(4);
  // c.next = d;
  Solution solution = Solution();
  ListNode? sol = solution.middleNode(a);
  print(sol?.val);
}
