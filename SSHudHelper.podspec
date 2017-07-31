
Pod::Spec.new do |s|

    s.name         = "SSHudHelper"
    s.version      = "0.0.2"
    s.summary      = "蒙版提示工具类,基于MBProgressHUD封装!"
    s.homepage     = "https://github.com/shusheng732/SSHudHelper"
    s.license      = "MIT"
    s.author       = { "Vimin" => "shusheng732@163.com" }
    s.platform     = :ios, "8.0"
    s.source       = { :git => "https://github.com/shusheng732/SSHudHelper.git", :tag => s.version }
    s.source_files = "SSHudHelper", "SSHudHelper/*.{h,m}"
    s.resource     = "SSHudHelper/resources.bundle"
    s.requires_arc = true
    s.dependency "MBProgressHUD", "~> 1.0.0"

end
