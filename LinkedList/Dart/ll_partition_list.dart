// class ListNode {
//   int val;
//   ListNode? next;
//   ListNode([this.val = 0, this.next]);
// }

// class Solution {
//   ListNode? partitionList(ListNode? head, int x) {
//     if (head == null) {
//       return null;
//     } else {
//       ListNode? greaterOrEqual;
//       ListNode? less;
//       if(head.val >= x){
//         greaterOrEqual = head;
//       }
//       else{
//         less = head;
//       }
//       ListNode temp = head;
//       while (temp.next != null) {
//         temp = temp.next!;
//         if (temp.val >= x) {
//           greaterOrEqual == n
//         }
//       }
//     }
//   }
// }

// void main() {
//   ListNode a = ListNode(1);
//   ListNode b = ListNode(2);
//   a.next = b;
//   ListNode c = ListNode(3);
//   b.next = c;
//   c.next = a;
//   // ListNode d = ListNode(4);
//   // c.next = d;
//   Solution solution = Solution();
//   // final sol = solution.hasCycle(a);
//   print(sol);
// }
