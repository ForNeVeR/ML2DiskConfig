procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
        self.pictureBox1 := new System.Windows.Forms.PictureBox();
        self.diskGroupBox := new System.Windows.Forms.GroupBox();
        self.diskComboBox := new System.Windows.Forms.ComboBox();
        self.selectDiskButton := new System.Windows.Forms.Button();
        self.exitButton := new System.Windows.Forms.Button();
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).BeginInit();
        self.diskGroupBox.SuspendLayout();
        self.SuspendLayout();
        // 
        // pictureBox1
        // 
        self.pictureBox1.Image := (System.Drawing.Image(resources.GetObject('pictureBox1.Image')));
        self.pictureBox1.Location := new System.Drawing.Point(12, 68);
        self.pictureBox1.Name := 'pictureBox1';
        self.pictureBox1.Size := new System.Drawing.Size(133, 262);
        self.pictureBox1.TabIndex := 0;
        self.pictureBox1.TabStop := false;
        // 
        // diskGroupBox
        // 
        self.diskGroupBox.Controls.Add(self.selectDiskButton);
        self.diskGroupBox.Controls.Add(self.diskComboBox);
        self.diskGroupBox.Location := new System.Drawing.Point(12, 12);
        self.diskGroupBox.Name := 'diskGroupBox';
        self.diskGroupBox.Size := new System.Drawing.Size(133, 50);
        self.diskGroupBox.TabIndex := 1;
        self.diskGroupBox.TabStop := false;
        self.diskGroupBox.Text := 'Select disk';
        // 
        // diskComboBox
        // 
        self.diskComboBox.FormattingEnabled := true;
        self.diskComboBox.Location := new System.Drawing.Point(6, 19);
        self.diskComboBox.Name := 'diskComboBox';
        self.diskComboBox.Size := new System.Drawing.Size(42, 21);
        self.diskComboBox.TabIndex := 2;
        // 
        // selectDiskButton
        // 
        self.selectDiskButton.Location := new System.Drawing.Point(54, 17);
        self.selectDiskButton.Name := 'selectDiskButton';
        self.selectDiskButton.Size := new System.Drawing.Size(75, 23);
        self.selectDiskButton.TabIndex := 3;
        self.selectDiskButton.Text := 'OK';
        self.selectDiskButton.UseVisualStyleBackColor := true;
        // 
        // exitButton
        // 
        self.exitButton.Location := new System.Drawing.Point(12, 336);
        self.exitButton.Name := 'exitButton';
        self.exitButton.Size := new System.Drawing.Size(133, 23);
        self.exitButton.TabIndex := 2;
        self.exitButton.Text := 'Выход';
        self.exitButton.UseVisualStyleBackColor := true;
        // 
        // MainForm
        // 
        self.ClientSize := new System.Drawing.Size(394, 372);
        self.Controls.Add(self.exitButton);
        self.Controls.Add(self.diskGroupBox);
        self.Controls.Add(self.pictureBox1);
        self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedSingle;
        self.MaximizeBox := false;
        self.Name := 'MainForm';
        self.Text := 'ML2 Disk Config';
        (System.ComponentModel.ISupportInitialize(self.pictureBox1)).EndInit();
        self.diskGroupBox.ResumeLayout(false);
        self.ResumeLayout(false);
    end;
