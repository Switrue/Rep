namespace Championship2024
{
    partial class UserMenu
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
            this.userNameLb = new System.Windows.Forms.Label();
            this.userPhotoPicB = new System.Windows.Forms.PictureBox();
            this.fieldTB = new System.Windows.Forms.TextBox();
            this.searchBtn = new System.Windows.Forms.Button();
            this.newUserBtn = new System.Windows.Forms.Button();
            this.clearBtn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.userPhotoPicB)).BeginInit();
            this.SuspendLayout();
            // 
            // userNameLb
            // 
            this.userNameLb.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.userNameLb.AutoSize = true;
            this.userNameLb.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.userNameLb.Location = new System.Drawing.Point(254, 165);
            this.userNameLb.Name = "userNameLb";
            this.userNameLb.Size = new System.Drawing.Size(40, 20);
            this.userNameLb.TabIndex = 8;
            this.userNameLb.Text = "Имя";
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
            this.userPhotoPicB.TabIndex = 7;
            this.userPhotoPicB.TabStop = false;
            this.userPhotoPicB.SizeChanged += new System.EventHandler(this.userPhotoPicB_SizeChanged);
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
            // searchBtn
            // 
            this.searchBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.searchBtn.Location = new System.Drawing.Point(12, 50);
            this.searchBtn.Name = "searchBtn";
            this.searchBtn.Size = new System.Drawing.Size(105, 32);
            this.searchBtn.TabIndex = 2;
            this.searchBtn.Text = "Поиск";
            this.searchBtn.UseVisualStyleBackColor = true;
            this.searchBtn.Click += new System.EventHandler(this.searchBtn_Click);
            // 
            // newUserBtn
            // 
            this.newUserBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.newUserBtn.Location = new System.Drawing.Point(123, 50);
            this.newUserBtn.Name = "newUserBtn";
            this.newUserBtn.Size = new System.Drawing.Size(105, 32);
            this.newUserBtn.TabIndex = 3;
            this.newUserBtn.Text = "Добавить";
            this.newUserBtn.UseVisualStyleBackColor = true;
            this.newUserBtn.Click += new System.EventHandler(this.newUserBtn_Click);
            // 
            // clearBtn
            // 
            this.clearBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.clearBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.clearBtn.Location = new System.Drawing.Point(12, 216);
            this.clearBtn.Name = "clearBtn";
            this.clearBtn.Size = new System.Drawing.Size(105, 32);
            this.clearBtn.TabIndex = 4;
            this.clearBtn.Text = "Очистить";
            this.clearBtn.UseVisualStyleBackColor = true;
            this.clearBtn.Click += new System.EventHandler(this.clearBtn_Click);
            // 
            // UserMenu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(420, 260);
            this.Controls.Add(this.clearBtn);
            this.Controls.Add(this.newUserBtn);
            this.Controls.Add(this.userNameLb);
            this.Controls.Add(this.userPhotoPicB);
            this.Controls.Add(this.fieldTB);
            this.Controls.Add(this.searchBtn);
            this.MinimumSize = new System.Drawing.Size(436, 299);
            this.Name = "UserMenu";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Пользователь";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.UserMenu_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.userPhotoPicB)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label userNameLb;
        private System.Windows.Forms.PictureBox userPhotoPicB;
        private System.Windows.Forms.TextBox fieldTB;
        private System.Windows.Forms.Button searchBtn;
        private System.Windows.Forms.Button newUserBtn;
        private System.Windows.Forms.Button clearBtn;
    }
}