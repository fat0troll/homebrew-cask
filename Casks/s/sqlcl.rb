cask "sqlcl" do
  version "25.1.0.101.2353"
  sha256 "8128ca8092fb0df123f636eba99200fdd679c356dd0ecdc1615016882c282775"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/sqlcl"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/download/"
    regex(/p>Version.*?(\d+(?:\.\d+)+)/i)
  end

  stage_only true

  zap trash: "~/.sqlcl"

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/sqlcl/bin"
  end
end
