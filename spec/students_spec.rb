require('minitest/autorun')
require('minitest/rg')
require_relative('../students')

class TestStudents < MiniTest::Test
  def test_new_student__name
    student = Students.new('Jimmy','E28')
    assert_equal('Jimmy',student.name)
  end

  def test_new_student__cohort
    student = Students.new('Jimmy','E28')
    assert_equal('E28',student.cohort)
  end

  def test_change_name
    student = Students.new('Jimmy','E28')
    student.name='Bob'
    assert_equal('Bob', student.name)
  end

  def test_change_cohort
    student = Students.new('Jimmy','E28')
    student.cohort='E29'
    assert_equal('E29', student.cohort)
  end
end
