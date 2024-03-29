Example 4.2
```
// Transmit power
Pw = 50; // Transmit power in watts

// Convert power to dBm
PmW = Pw * 1000; // Convert watts to milliwatts
dBm = 10 * log10(PmW); // Calculate power in dBm

// Convert power to dBW
dBW = 10 * log10(Pw); // Calculate power in dBW

// Display the transmit power
disp("Transmit power in dBm: " + string(dBm) + " dBm");
disp("Transmit power in dBW: " + string(dBW) + " dBW");

// Received power at 100m
Pt = 50; // Transmit power in watts
Gt = 1; // Gain of the transmitting antenna (unity gain)
Gr = 1; // Gain of the receiving antenna (unity gain)
d = 100; // Distance between the transmitter and receiver in meters

// Calculate received power at 100m
lambda = 3e8 / (900e6); // Wavelength in meters (speed of light / frequency)
Pr_100m = Pt * Gt * Gr * (lambda / (4 * %pi * d))^2;

// Convert received power to dBm
Pr_100m_dBm = 10 * log10(Pr_100m * 1000); // Convert watts to milliwatts and calculate dBm

// Display the received power at 100m
disp("Received power at 100m: " + string(Pr_100m_dBm) + " dBm");

// Received power at 10km
d = 10000; // Distance between the transmitter and receiver in meters

// Calculate received power at 10km
Pr_10km = Pt * Gt * Gr * (lambda / (4 * %pi * d))^2;

// Convert received power to dBm
Pr_10km_dBm = 10 * log10(Pr_10km * 1000); // Convert watts to milliwatts and calculate dBm

// Display the received power at 10km
disp("Received power at 10km: " + string(Pr_10km_dBm) + " dBm");
```