result_rec20 = int_rec(@(x) x*cos(5*x),0,4,20)
result_rec200 = int_rec(@(x) x*cos(5*x),0,4,200)
result_simps20 = int_simps13(@(x) x*cos(5*x),0,4,20)
result_simps200 = int_simps13(@(x) x*cos(5*x),0,4,200)