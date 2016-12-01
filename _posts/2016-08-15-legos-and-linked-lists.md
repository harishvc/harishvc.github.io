---
layout: post
title:  "Lego & Linked List"
date:   2016-08-15
excerptimagealt: "lego and linked list"  
excerptimage: /pics/lego-linked-list.jpg  
excerpt: Linked list and Lego share an interesting common feature - Lego blocks and Linked list can be rearranged to build interesting shapes to solve interesting problems. Let's deep dive!  
cheader: <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
         <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gist-embed/2.0/gist-embed.min.js"></script> 
tag:
- linked list
- data structure
- algorithms
---

## Linked List

![legos and linked list](/pics/linked-list.png)

A Linked list is a **linear dynamic data structure** where each node is a separate object  

  *  Each node is comprised of two items - data and a reference to the next node   
  *  The last node has a reference to `None (null)`.   
  *  The entry point into a Linked list is called `Head` - reference to the first node    
  *  If the list is empty then the head is a `null` reference    
  *  New node(s) can be **created** and then added to the head, tail or anywhere in the Linked list  
  *  Node(s) can be removed from the head, tail or anywhere in the Linked list  
  *  Node(s) can be rearranged on the Linked list  

### Linked List Advantages

  * Nodes can be added and removed - memory allocation and deallocation while program is running!
  * Insert and delete node(s) can be easily performed
  * Ideal data structure if size is not known ahead , nodes can grow and shink
  * Stack and queue can be implemented using Linked list


### Linked List Disadvantages

 * Linked List use more memory than **list** since **next** pointer uses storage
 * Sequential access from the start - the average and worst case time complexity to find a node is O(n)  
 * Additional code complexity

## Lego

![legos and linked list](/pics/lego-linked-list.jpg)   
image source: wikimedia.org

The name 'LEGO' is an abbreviation of the two Danish words "leg godt", meaning "play well". The LEGO brick in its present form was launched in 1958. The interlocking principle with its tubes makes it unique and offers unlimited building possibilities. 


** Interesting isn't it? Ability to add and modify existing shapes (data structures) to build interesting shapes (data structures) to solve interesting problems is a common feature of Lego and Linked list. **

### Linked List problems

* [Find the middle element in a linked list](https://github.com/harishvc/challenges/blob/master/linked-list-middle-element.py)  
* [Find the nth node from the end of a linked list](https://github.com/harishvc/challenges/blob/master/find-nth-node-from-the-end-in-a-single-linked-list.py)
* [Delete a node in the linked list](https://github.com/harishvc/challenges/blob/master/linked-list-delete-node.py)  
* [Zip a linked list](https://github.com/harishvc/challenges/blob/master/linked-list-zip.py)
* [Reverse a linked list](https://github.com/harishvc/challenges/blob/master/linked-list-reverse.py)  
* [Skip list](https://kunigami.blog/2012/09/25/skip-lists-in-python/)    

## Related Articles  
* [Linked List Problems](https://github.com/harishvc/challenges#linked-lists)
* [Linked List Lecture Notes@CMU](https://www.cs.cmu.edu/~adamchik/15-121/lectures/Linked%20Lists/linked%20lists.html)
