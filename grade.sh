CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

set -e

if [[ -f "student-submission/ListExamples.java" ]] 
then
    echo "Correct file submitted!"
else 
    echo "Wrong file submitted!"
fi

cp -r *.java grading-area
cp -r lib grading-area

set +e

javac student-submission/ListExamples.java

if [[ $? != 0 ]] 
then
    echo "Oh no! Program couldn't compile!"
else 
    echo "Yay! Program compiled successfully!"
fi


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
