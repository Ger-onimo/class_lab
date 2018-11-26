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
end
