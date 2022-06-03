#посчитайте количество всех студентов
Student.all.count
#посчитайте количество студентов с именем Иван
Student.where(name: "Иван")
#посчитайте количество студентов созданных после 1 сентября 2020 года
Student.where("created_at > ?", "2020-09-01").count
#посчитайте количество студентов с родителями
Student.joins(:parrents).count
#посчитайте количество студентов с родителями при том что имя родителя Марина
Student.joins(:parrents).where(parrents.name: "Марина").count
#посчитайте количество студентов без родителя
Students.left_joins(:parrents).where(parrents: {id: nil}).count