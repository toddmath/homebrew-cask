cask 'postbox' do
  version '6.1.17'
  sha256 'e0d5cd86f383721feff6a291a19f0af3de01ad8406c5d9d03c652f0947ac50fc'

  # d3nx85trn0lqsg.cloudfront.net/mac was verified as official when first introduced to the cask
  url "https://d3nx85trn0lqsg.cloudfront.net/mac/postbox-#{version}-mac64.dmg"
  appcast 'https://www.postbox-inc.com/product/releasenotes'
  name 'Postbox'
  homepage 'https://www.postbox-inc.com/'

  depends_on macos: '>= :el_capitan'

  app 'Postbox.app'

  zap trash: [
               '~/Library/Application Support/Postbox',
               '~/Library/Caches/com.crashlytics.data/com.postbox-inc.postbox',
               '~/Library/Caches/com.postbox-inc.postbox',
               '~/Library/Caches/Postbox',
               '~/Library/PDF Services/Mail PDF with Postbox',
               '~/Library/Preferences/com.postbox-inc.postbox.plist',
               '~/Library/Saved Application State/com.postbox-inc.postbox.savedState',
             ]
end
