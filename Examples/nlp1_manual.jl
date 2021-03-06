a_ = zeros(5)
y_ = 0
z_ = -9.4826529886227799e+00
r = zeros(5)

a_[1] = -9.0909090552980257e-02
a_[2] = 9.0909091401531950e-01
a_[3] = -1.0000000051491075e+01
a_[4] = 1.0000000051491075e+01
a_[5] = -1.0000000097329545e+01

r[1] = max(10 - a_[1] - a_[2] + a_[3], 0)
r[2] = max(-a_[2] + a_[2]*y_ - a_[1]*a_[4], 0)
r[3] = a_[3]*a_[2] + a_[1]*a_[4] - a_[5]
r[4] = z_ - sum(a_) + 0.001*sum(a_.^2)
r[5] = a_[3] + a_[4] - 10*y_

for i = 1:5
	println("r[",i,"] = ",r[i])
end