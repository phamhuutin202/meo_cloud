class CreateEyePrescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :eye_prescriptions do |t|
      t.integer :vision_score
      t.string :dblur
      t.string :dblureye
      t.string :nblur
      t.string :nblureye
      t.string :rscvad
      t.string :lscvad
      t.float :odars
      t.float :odarc
      t.float :odara
      t.float :osars
      t.float :osarc
      t.float :osara
      t.float :odrecdrx
      t.float :osrecdrx
      t.float :oddrxdisp
      t.float :osdrxdisp
      t.string :dframe
      t.float :odnrxdisp
      t.float :osnrxdisp
      t.float :odrecnrx
      t.float :osrecnrx
      t.string :nframe
      t.string :dframe2
      t.string :nframe2
      t.float :otcpower
      t.float :otcbifocal
      t.float :otcreader
      t.float :otcreaderpowerdisp1
      t.float :otcreaderpowerdisp2
      t.string :otcreaderframedisp1
      t.string :otcreaderframedisp2
      t.float :otcbifocalpowerdisp1
      t.float :otcbifocalpowerdisp2
      t.string :otcbifocalframedisp1
      t.string :otcbifocalframedisp2
      t.string :sunweardisp1
      t.string :sunweardisp2
      t.float :odds
      t.float :oddc
      t.float :odda
      t.float :osds
      t.float :osdc
      t.float :osda
      t.float :oddse
      t.float :osdse
      t.float :oddse_rf
      t.float :osdse_rf
      t.float :ouadd
      t.float :odnse
      t.float :osnse
      t.float :odavdrx
      t.float :osavdrx
      t.float :odavnrx
      t.float :osavnrx
      t.float :odrecdrx
      t.float :osrecdrx
      t.float :odrecnrx
      t.float :osrecnrx
      t.float :otcpower
      t.float :otcbifocal
      t.float :otcreader

      t.timestamps
    end
  end
end
