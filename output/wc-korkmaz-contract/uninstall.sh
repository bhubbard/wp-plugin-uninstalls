#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'birinci_sozlesme_link_ismi'
wp option delete 'ikinci_sozlesme_link_ismi'
wp option delete 'firmaadi'
wp option delete 'firmaadresi'
wp option delete 'firmatelno'
wp option delete 'firmaverdaire'
wp option delete 'firmaverno'
wp option delete 'sozlesme_mail_durumu'
wp option delete 'korkmaz_contract_log_enabled'
wp option delete 'alanlar_options'
wp option delete 'sozlesme_ozellik_3'
wp option delete 'sozlesme_ozellik_1'
wp option delete 'sozlesme_ozellik_2'
wp option delete 'sozlesme_ozellik_5'
wp option delete 'sozlesme_ozellik_6'
wp option delete 'sozlesme_ozellik_4'
wp option delete 'birinci_sozlesme_metni'
wp option delete 'ikinci_sozlesme_metni'
wp option delete 've_metin'
wp option delete 'son_metin'

