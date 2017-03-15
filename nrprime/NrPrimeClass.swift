class NrPrim {
    private var _value: Int?
    var value: Int? {
        get {
            return self._value
        }
        set(newValue) {
            self._value = newValue
        }
    }
    
    func check() -> Bool? {
        if self._value != nil {
            if self._value! <= 1 {
                return false
            }
            
            if self._value! <= 3 {
                return true
            }
            
            //for (i = 2; i <= n/2; i++)
            for i in 2...(self._value!/2) {
                if self._value! % i == 0 {
                    return false
                }
            }
            
            return true
        }
        
        return nil
    }
}

class VerificarePrim: NrPrim {
    private var _status: Bool?
    var status: Bool? {
        return self._status
    }
    
    override var value: Int? {
        get {
            return super.value
        }
        set(newValue) {
            super.value = newValue
            self._status = self.check()
        }
    }
}
