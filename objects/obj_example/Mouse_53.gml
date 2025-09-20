// Show OK-Only Message Box
if (nDialogId == 0) ShowMessage("This is a dialog box. Click OK to continue.");

// Show Yes/No Question Box
if (nDialogId == 1) ShowQuestion("Here is a question box. Yes or no?");

// Show Yes/No/Cancel Question Box
if (nDialogId == 2) ShowQuestionExt("Here is yet another question box. Yes, no, or cancel?");

// Set Filter For File Dialogs
lpFilter = "Supported Image Files (*.png *.gif *.jpg *.jpeg)|*.png;*.gif;*.jpg;*.jpeg|PNG Image Files (*.png)|*.png|GIF Image Files (*.gif)|*.gif|JPEG Image Files (*.jpg *.jpeg)|*.jpg;*.jpeg";

// Select One Existing File and Echo the Result On-Open-Button
if (nDialogId == 3) { lpDialogResult = GetOpenFileName(lpFilter, @'Select a file', "", @'Open File');
if (lpDialogResult != "") ShowMessage(lpDialogResult); }

// Select One (or More) Existing File(s) and Echo the Result On-Open-Button
if (nDialogId == 4) { lpDialogResult = GetOpenFileNames(lpFilter, @'Select one or more files', "", @'Open Files');
if (lpDialogResult != "") ShowMessage(lpDialogResult); }

// Select One New (or Existing) File and Echo the Result On-Save-Button
if (nDialogId == 5) { lpDialogResult = GetSaveFileName(lpFilter, @'Untitled.png', "", @'Save As');
if (lpDialogResult != "") ShowMessage(lpDialogResult); }

// Select One Existing Directory and Echo the Result On-Open-Button
if (nDialogId == 6) { lpDialogResult = GetDirectory("Select Directory", "");
if (lpDialogResult != "") ShowMessage(lpDialogResult); }

// Force GetString/Number calls to have a Cancel Button
EnvironmentSetVariable("IMGUI_DIALOG_CANCELABLE", string(1));

// Enter a String in the TextBox and Echo the Result if the Result is Not Empty
if (nDialogId == 7) { lpDialogResult = GetString("Enter a string in the input box below:", "ENTER TEXT HERE");
if (lpDialogResult != "") ShowMessage(lpDialogResult); }

// Force GetString/Number calls to have no Cancel Button
EnvironmentSetVariable("IMGUI_DIALOG_CANCELABLE", string(0));

// Enter a Number in the TextBox and Echo the Result
if (nDialogId == 8) { nDialogResult = GetNumber("Enter a number in the input box below:", 404);
ShowMessage(nDialogResult); }

// Force GetString/Number calls to have a Cancel Button
EnvironmentSetVariable("IMGUI_DIALOG_CANCELABLE", string(1));

// End of Demo
if (nDialogId == 9) game_end();

// Next Dialog
nDialogId++;
