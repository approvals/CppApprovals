<!--
GENERATED FILE - DO NOT EDIT
This file was generated by [MarkdownSnippets](https://github.com/SimonCropp/MarkdownSnippets).
Source File: /doc/how_tos/mdsource/TestContainerContents.source.md
To change this file edit the source file and then execute ./run_markdown_templates.sh.
-->

<a id="top"></a>

# How to Test the Contents of a Container

<!-- toc -->
## Contents

  * [When to test a container](#when-to-test-a-container)
  * [Steps](#steps)
  * [More Examples](#more-examples)
  * [Further Advice](#further-advice)<!-- endtoc -->

## When to test a container

You have called a method that returns a collection of objects, and you want a nicer read-out than the standard verify() will give you.

## Steps

1. Copy this starter text.

<!-- snippet: VerifyAllStartingPointContainer -->
<a id='snippet-verifyallstartingpointcontainer'/></a>
```cpp
std::vector<std::string> objectsToVerify{"hello", "world"};
Approvals::verifyAll("TITLE", objectsToVerify);
```
<sup><a href='/tests/DocTest_Tests/VectorTests.cpp#L24-L27' title='File snippet `verifyallstartingpointcontainer` was extracted from'>snippet source</a> | <a href='#snippet-verifyallstartingpointcontainer' title='Navigate to start of snippet `verifyallstartingpointcontainer`'>anchor</a></sup>
<!-- endsnippet -->

2. Replace the `objectsToVerify` container with your collection of objects.
3. Change the TITLE to something meaningful
4. Run it, and approve the output.

## More Examples

For some examples, see [VectorTests.cpp](https://github.com/approvals/ApprovalTests.cpp/blob/master/tests/DocTest_Tests/VectorTests.cpp).

## Further Advice

For advice on effective formatting, see [To String](/doc/ToString.md#top). As you write out larger volumes of data in your approval files, experience has shown that the choice of layout of text in approval files can make a big difference to maintainability of tests, when failures occur.

---

[Back to User Guide](/doc/README.md#top)