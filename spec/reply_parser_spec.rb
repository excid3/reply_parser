require 'reply_parser'

describe ReplyParser do
  it "has a sanitize method" do
    ReplyParser.should respond_to(:sanitize)
  end

  it "should return a string" do
    ReplyParser.sanitize("").should eq("")
  end

  it "should return the same text" do
    ReplyParser.sanitize("test").should eq("test")
  end

  it "should sanitize the input" do
    ReplyParser.sanitize("<div>hey</div>").should eq("hey")
    ReplyParser.sanitize("<div><span>hey</span></div>").should eq("hey")
    ReplyParser.sanitize("<div><span>hey").should eq("hey")
  end

  it "returns only the content above the reply" do
    ReplyParser.sanitize("""<div>This is my reply</div>

                         asdfljk
                         On Oct 15, 2013 at 8:35pm, Chris Oliver &lt;excid3@gmail.com&gt; wrote:"""
    ).should eq("""This is my reply

                         asdfljk""")

    ReplyParser.sanitize("""<div>This is my reply</div>

                         asdfljk

                         > Reply ABOVE THIS LINE to add a comment to this conversation
                         
                         asdfasdfdasfsadfdasf > asdfasdfladsdflkj
                         > asdfasdfdsa jlk
                         asdkfj"""
    ).should eq("""This is my reply

                         asdfljk""")
  end
end
