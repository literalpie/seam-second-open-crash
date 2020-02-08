# seam-second-open-crash
To see the issue, run the app twice on the same device. 
The first time the app runs, it will successfully create the object in the moc and log out the new object count.
On the second run, the app crashes with the error: 
> Unexpectedly found nil while unwrapping an Optional value: file

You can "reset" the app so it works again (once) by renaming the sqlite file on line 49 of the app delegate.


This all happens local on the device, before syncing is ever attempted (no verifying of cloudkit status).
