require 'DiaryEntry'

RSpec.describe DiaryEntry do
  it "title returns the title as a string" do
    diary = DiaryEntry.new("Andy's Diary", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values (called 'state' or 'memory') and exposes some methods that can operate on that state. A class is a blueprint for creating objects. In object-oriented programming, the most important unit of behaviour is the class. We build our programs by creating classes that work together to accomplish the job of the program. To introduce this, we're going to: Test-drive a single-class program. Design a single-class program. Test-drive a system of classes. Design a system of classes. In this step, we will test-drive a single class program. This means we will focus on the 'Create Examples Tests' and 'Implement Behaviour' steps first.")
    expect(diary.title).to eq "Andy's Diary"
  end

  it "contents returns the contents as a string" do
    diary = DiaryEntry.new("Andy's Diary", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values (called 'state' or 'memory') and exposes some methods that can operate on that state. A class is a blueprint for creating objects. In object-oriented programming, the most important unit of behaviour is the class. We build our programs by creating classes that work together to accomplish the job of the program. To introduce this, we're going to: Test-drive a single-class program. Design a single-class program. Test-drive a system of classes. Design a system of classes. In this step, we will test-drive a single class program. This means we will focus on the 'Create Examples Tests' and 'Implement Behaviour' steps first.")
    expect(diary.contents).to eq "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values (called 'state' or 'memory') and exposes some methods that can operate on that state. A class is a blueprint for creating objects. In object-oriented programming, the most important unit of behaviour is the class. We build our programs by creating classes that work together to accomplish the job of the program. To introduce this, we're going to: Test-drive a single-class program. Design a single-class program. Test-drive a system of classes. Design a system of classes. In this step, we will test-drive a single class program. This means we will focus on the 'Create Examples Tests' and 'Implement Behaviour' steps first."
  end

  it "count_words returns the number of words in the contents as a integer" do
    diary = DiaryEntry.new("Andy's Diary", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values (called 'state' or 'memory') and exposes some methods that can operate on that state. A class is a blueprint for creating objects. In object-oriented programming, the most important unit of behaviour is the class. We build our programs by creating classes that work together to accomplish the job of the program. To introduce this, we're going to: Test-drive a single-class program. Design a single-class program. Test-drive a system of classes. Design a system of classes. In this step, we will test-drive a single class program. This means we will focus on the 'Create Examples Tests' and 'Implement Behaviour' steps first.")
    expect(diary.count_words).to eq 150
  end

  it "reading_time returns the time to read the contents" do
    diary = DiaryEntry.new("Andy's Diary", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values (called 'state' or 'memory') and exposes some methods that can operate on that state. A class is a blueprint for creating objects. In object-oriented programming, the most important unit of behaviour is the class. We build our programs by creating classes that work together to accomplish the job of the program. To introduce this, we're going to: Test-drive a single-class program. Design a single-class program. Test-drive a system of classes. Design a system of classes. In this step, we will test-drive a single class program. This means we will focus on the 'Create Examples Tests' and 'Implement Behaviour' steps first.")
    expect(diary.reading_time(50)).to eq 3
  end

  it "reading_chunk returns the first chunk of text" do
    diary = DiaryEntry.new("Andy's Diary", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values (called 'state' or 'memory') and exposes some methods that can operate on that state. A class is a blueprint for creating objects. In object-oriented programming, the most important unit of behaviour is the class. We build our programs by creating classes that work together to accomplish the job of the program. To introduce this, we're going to: Test-drive a single-class program. Design a single-class program. Test-drive a system of classes. Design a system of classes. In this step, we will test-drive a single class program. This means we will focus on the 'Create Examples Tests' and 'Implement Behaviour' steps first.")
    expect(diary.reading_chunk(25, 2)).to eq "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values"
  end

  it "reading_chunk returns the next chunk of text" do
    diary = DiaryEntry.new("Andy's Diary", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values (called 'state' or 'memory') and exposes some methods that can operate on that state. A class is a blueprint for creating objects. In object-oriented programming, the most important unit of behaviour is the class. We build our programs by creating classes that work together to accomplish the job of the program. To introduce this, we're going to: Test-drive a single-class program. Design a single-class program. Test-drive a system of classes. Design a system of classes. In this step, we will test-drive a single class program. This means we will focus on the 'Create Examples Tests' and 'Implement Behaviour' steps first.")
    diary.reading_chunk(5,1)
    diary.reading_chunk(5,1)
    expect(diary.reading_chunk(5, 1)).to eq "program. Our approach differs purely"
  end

  it "reading_chunk returns the start of the text if the end is reached" do
    diary = DiaryEntry.new("Andy's Diary", "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values (called 'state' or 'memory') and exposes some methods that can operate on that state. A class is a blueprint for creating objects. In object-oriented programming, the most important unit of behaviour is the class. We build our programs by creating classes that work together to accomplish the job of the program. To introduce this, we're going to: Test-drive a single-class program. Design a single-class program. Test-drive a system of classes. Design a system of classes. In this step, we will test-drive a single class program. This means we will focus on the 'Create Examples Tests' and 'Implement Behaviour' steps first.")
    diary.reading_chunk(25,2)
    diary.reading_chunk(200,1)
    expect(diary.reading_chunk(25, 2)).to eq "Test-driving a single-class program is similar to test-driving a single-method program. Our approach differs purely because methods and classes are different. A method is a reusable chunk of code that takes input as arguments and returns a value. An object is a structure that wraps ('encapsulates') a collection of values"
  end
end