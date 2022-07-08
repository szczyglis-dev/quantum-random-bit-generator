**QSharp** | current version: **1.0** | 2022-07-08

# Quantum random bit generator
## Basics of quantum computing - Q# in Azure Quantum

Microsoft Azure Quantum offers the ability to run code on a quantum computer.
Everyone who has an account in the Azure cloud gets the opportunity to run the code on a real quantum computer or in a simulator. On the Microsoft website there is a comprehensive description of the service, which can be found here:

https://docs.microsoft.com/en-us/azure/quantum/overview-azure-quantum

> Azure Quantum is the cloud quantum computing service of Azure, with a diverse set of quantum solutions and technologies. Azure Quantum ensures an open, flexible, and future-proofed path to quantum computing that adapts to your way of working, accelerates your progress, and protects your technology investments. Azure Quantum provides the best development environment to create quantum algorithms for multiple platforms at once while preserving flexibility to tune the same algorithms for specific systems.

Quantum computing requires knowledge of at least theoretical foundations of quantum mechanics and phenomena such as superposition, reading problems and quantum entanglement. However, you don't have to be a quantum physicist to start playing with quantum algorithms yourself. There is sample code in Azure that you can use as a good starting point for quantum computing. Below is an explanation of how the quantum "hello world" works in Microsoft Azure.

The sample code provided in Azure Quantum might look like this:

```qs
// random.qs

namespace Example {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Intrinsic;
    
    operation random() : Result {
        use q = Qubit();  
        H(q);         
        return M(q); 
    }
}
```

This is a very simple code, but it may seem difficult to read the first time, see below for an explanation of how it works:

1) The first step here is to define a qubit.
The qubit, unlike the bit, has the ability to be in both states at the same time, using the phenomenon of quantum superposition.

```qs
use q = Qubit()
```
https://en.wikipedia.org/wiki/Qubit

> In quantum computing, a qubit (/ˈkjuːbɪt/) or quantum bit is a basic unit of quantum information—the quantum version of the classic binary bit physically realized with a two-state device. A qubit is a two-state (or two-level) quantum-mechanical system, one of the simplest quantum systems displaying the peculiarity of quantum mechanics. Examples include the spin of the electron in which the two levels can be taken as spin up and spin down; or the polarization of a single photon in which the two states can be taken to be the vertical polarization and the horizontal polarization. In a classical system, a bit would have to be in one state or the other. However, quantum mechanics allows the qubit to be in a coherent superposition of both states simultaneously, a property that is fundamental to quantum mechanics and quantum computing.

2) The qubit at this point does not do anything special, it is in the state 0. To find out the power of such a qubit, it must first be put into the state of the so-called. superposition:

```qs
H(q)
```

The **H(q)** function causes the qubit to pass through the so-called Hadamard's gate.
The Hadamard gate puts the qubit into a superposition state so that it is in each state simultaneously, unlike the classic bit, which can only have one value of 0 or 1 at a time.

Superposition is a physical phenomenon in the field of quantum mechanics, a brief description of which can be found here:

https://en.wikipedia.org/wiki/Quantum_superposition

> Quantum superposition is a fundamental principle of quantum mechanics. It states that, much like waves in classical physics, any two (or more) quantum states can be added together ("superposed") and the result will be another valid quantum state; and conversely, that every quantum state can be represented as a sum of two or more other distinct states. Mathematically, it refers to a property of solutions to the Schrödinger equation; since the Schrödinger equation is linear, any linear combination of solutions will also be a solution.

A brief description of how the Hadamard gate works can be found here:

https://www.quantum-inspire.com/kbase/hadamard/

https://en.wikipedia.org/wiki/Hadamard_transform

![hadamard](https://user-images.githubusercontent.com/61396542/177996845-6a3d9d15-5d73-413a-9ba0-e1245e866067.png)

Using the analogy to a bit, which can be either 0 or 1, you can imagine that after passing the gate it gets 0 and 1 simultaneously. At this point, the qubit is in both of these states at the same time. This state will hold until the reading will not destroy the superposition and will force the qubit to take only one state.

3) Now having the qubit in superposition, we need to read its state, which will destroy the superposition state:

```qs
M(q)
```

The **M(q)** function, short for "Measurement", measures the state of a qubit.
At the moment of reading the state of a qubit in superposition, we get the probability of it "appearing" in one of the two states - we get a 50% chance of being able to get a 0 result and a 50% chance of getting a 1 result:

![result](https://user-images.githubusercontent.com/61396542/177995816-75e0912a-d3e4-4c39-addc-720a3a43ab6c.png)

It is a very simple code from Azure Quantum that only illustrates the principle of operation of a simple quantum algorithm, which can be a good starting point for getting interested in quantum computing. There are also other examples in Azure that you can analyze and run yourself on one of the available quantum machines.

**Enjoy!**

MIT License | 2022 Marcin 'szczyglis' Szczygliński

https://szczyglis.dev

Contact: szczyglis@protonmail.com
