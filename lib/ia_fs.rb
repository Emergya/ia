module Ia::Fs
  def create_dir(dirname)
    if FileTest::directory?(dirname)
      pwarn("#{dirname} existe (ignorando)",2)
    else
      pinfo("#{dirname} creado",2) if Dir::mkdir(dirname)
    end
  end
end
