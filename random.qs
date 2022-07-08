namespace Example {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    
    operation random() : Result {
        use q = Qubit();  
        H(q);         
        return M(q); 
    }
}
