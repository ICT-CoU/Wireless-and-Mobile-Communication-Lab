Example-4.2-a
```
// Constants
c = 3e8; // Speed of light in meters per second
f = 900e6; // Carrier frequency in Hertz

// Wavelength calculation
lambda = c / f;

// Length of the quarter-wavelength monopole antenna
length = lambda / 4;
length_mm = round(length * 1000); // Convert to millimeters

// Effective aperture calculation
ae = (lambda^2) / (4*%pi);
ae_cm2 = round(ae * 10000); // Convert to square centimeters

// Display the results
disp("Length of the receiving antenna: " + string(length_mm) + " mm");
disp("Effective aperture of the receiving antenna: " + string(ae_cm2) + " cm^2");

```



Example-4.2-b
```
// Given values
Pt = 10; // Transmitted power from the base station in watts
Gt = 2; // Gain of the transmitting antenna
Gr = 10^(2.55/10); // Gain of the receiving antenna (converting dB to linear scale)
ht = 50; // Height of the transmitting antenna in meters
hr = 1.5; // Height of the receiving antenna in meters
d = 5 * 1000; // Distance between the base station and the mobile in meters (converting km to meters)
L = 1; // Path loss factor (assuming ideal conditions without any additional loss)

// Calculate received power
Pr = Pt * Gt * Gr * (ht^2 * hr^2) / (d^4 * L);

// Display the result
disp("Received power at the mobile: " + string(Pr) + " watts");
```