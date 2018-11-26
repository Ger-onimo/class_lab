require('minitest/autorun')
require('minitest/rg')
require_relative('../students')

class TestStudents < MiniTest::Test
  def test_new_student
  student = Students.new('Jimmy','E28')
  assert_equal('Jimmy',student.name)
  end
end
