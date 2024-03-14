namespace Championship2024
{
    partial class AddUser
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.fieldTB = new System.Windows.Forms.TextBox();
            this.addUserBtn = new System.Windows.Forms.Button();
            this.backBtn = new System.Windows.Forms.Button();
            this.userPhotoPicB = new System.Windows.Forms.PictureBox();
            this.chooseBtn = new System.Windows.Forms.Button();
            this.clearBtn = new System.Windows.Forms.Button();
            this.openFileDialog = new System.Windows.Forms.OpenFileDialog();
            ((System.ComponentModel.ISupportInitialize)(this.userPhotoPicB)).BeginInit();
            this.SuspendLayout();
            // 
            // fieldTB
            // 
            this.fieldTB.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.fieldTB.Location = new System.Drawing.Point(12, 12);
            this.fieldTB.Multiline = true;
            this.fieldTB.Name = "fieldTB";
            this.fieldTB.Size = new System.Drawing.Size(216, 32);
            this.fieldTB.TabIndex = 1;
            // 
            // addUserBtn
            // 
            this.addUserBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.addUserBtn.Location = new System.Drawing.Point(12, 50);
            this.addUserBtn.Name = "addUserBtn";
            this.addUserBtn.Size = new System.Drawing.Size(105, 32);
            this.addUserBtn.TabIndex = 2;
            this.addUserBtn.Text = "Добавить";
            this.addUserBtn.UseVisualStyleBackColor = true;
            // 
            // backBtn
            // 
            this.backBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.backBtn.Location = new System.Drawing.Point(123, 50);
            this.backBtn.Name = "backBtn";
            this.backBtn.Size = new System.Drawing.Size(105, 32);
            this.backBtn.TabIndex = 3;
            this.backBtn.Text = "Назад";
            this.backBtn.UseVisualStyleBackColor = true;
            this.backBtn.Click += new System.EventHandler(this.backBtn_Click);
            // 
            // userPhotoPicB
            // 
            this.userPhotoPicB.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.userPhotoPicB.BackColor = System.Drawing.SystemColors.ActiveBorder;
            this.userPhotoPicB.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.userPhotoPicB.Location = new System.Drawing.Point(258, 12);
            this.userPhotoPicB.Name = "userPhotoPicB";
            this.userPhotoPicB.Size = new System.Drawing.Size(150, 150);
            this.userPhotoPicB.TabIndex = 9;
            this.userPhotoPicB.TabStop = false;
            this.userPhotoPicB.SizeChanged += new System.EventHandler(this.userPhotoPicB_SizeChanged);
            // 
            // chooseBtn
            // 
            this.chooseBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.chooseBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.chooseBtn.Location = new System.Drawing.Point(303, 168);
            this.chooseBtn.Name = "chooseBtn";
            this.chooseBtn.Size = new System.Drawing.Size(105, 23);
            this.chooseBtn.TabIndex = 4;
            this.chooseBtn.Text = "Выбрать";
            this.chooseBtn.UseVisualStyleBackColor = true;
            this.chooseBtn.Click += new System.EventHandler(this.chooseBtn_Click);
            // 
            // clearBtn
            // 
            this.clearBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.clearBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.clearBtn.Location = new System.Drawing.Point(12, 216);
            this.clearBtn.Name = "clearBtn";
            this.clearBtn.Size = new System.Drawing.Size(105, 32);
            this.clearBtn.TabIndex = 5;
            this.clearBtn.Text = "Очистить";
            this.clearBtn.UseVisualStyleBackColor = true;
            this.clearBtn.Click += new System.EventHandler(this.clearBtn_Click);
            // 
            // openFileDialog
            // 
            this.openFileDialog.FileName = "openFileDialog1";
            // 
            // AddUser
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(420, 260);
            this.Controls.Add(this.clearBtn);
            this.Controls.Add(this.chooseBtn);
            this.Controls.Add(this.userPhotoPicB);
            this.Controls.Add(this.backBtn);
            this.Controls.Add(this.addUserBtn);
            this.Controls.Add(this.fieldTB);
            this.MinimumSize = new System.Drawing.Size(436, 299);
            this.Name = "AddUser";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Регистрация";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.AddUser_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.userPhotoPicB)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox fieldTB;
        private System.Windows.Forms.Button addUserBtn;
        private System.Windows.Forms.Button backBtn;
        private System.Windows.Forms.PictureBox userPhotoPicB;
        private System.Windows.Forms.Button chooseBtn;
        private System.Windows.Forms.Button clearBtn;
        private System.Windows.Forms.OpenFileDialog openFileDialog;
    }
}