# StackAlternatives
UIStackView more flexible alternative 

Just copy HorizontalStackView or VerticalStackView to your project and instantiate in any way you like.
if you use storyboard you need to call the function viewsSetup manually.


properties :

topSpace/leftSpace - the amount of top or left padding.
padding:  the space at the beging and the end of the stack.

Spaces between views can be handeled in two manners:
by the property constSpace or setting an array of spaces. if you use the array make sure that the amount od spaces = the amount of views - 1.

