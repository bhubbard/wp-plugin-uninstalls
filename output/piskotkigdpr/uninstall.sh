#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-zavesa'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-barva-zavese'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-lokacija'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-senca-okna'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-zaobljenost-okna'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-barva-ozadja'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-animacija'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-ime-strani'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-trajanje-piskotka'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-barva-ikone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-barva-pisave'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-velikost-pisave'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-naslov'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-besedilo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-barva-povezave'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-ime-povezave-pogoji'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-povezava-pogoji'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-velikost-povezave'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-besedilo-gumba'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-barva-gumba'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-zaobljenost-gumba'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-barva-gumba-povezave'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-velikost-gumba-povezave'"
wp option delete 'piskotki-gdpr-zavesa'
wp option delete 'piskotki-gdpr-barva-zavese'
wp option delete 'piskotki-gdpr-lokacija'
wp option delete 'piskotki-gdpr-senca-okna'
wp option delete 'piskotki-gdpr-zaobljenost-okna'
wp option delete 'piskotki-gdpr-barva-ozadja'
wp option delete 'piskotki-gdpr-animacija'
wp option delete 'piskotki-gdpr-ime-strani'
wp option delete 'piskotki-gdpr-trajanje-piskotka'
wp option delete 'piskotki-gdpr-barva-ikone'
wp option delete 'piskotki-gdpr-barva-pisave'
wp option delete 'piskotki-gdpr-velikost-pisave'
wp option delete 'piskotki-gdpr-naslov'
wp option delete 'piskotki-gdpr-besedilo'
wp option delete 'piskotki-gdpr-barva-povezave'
wp option delete 'piskotki-gdpr-ime-povezave-pogoji'
wp option delete 'piskotki-gdpr-povezava-pogoji'
wp option delete 'piskotki-gdpr-velikost-povezave'
wp option delete 'piskotki-gdpr-besedilo-gumba'
wp option delete 'piskotki-gdpr-barva-gumba'
wp option delete 'piskotki-gdpr-zaobljenost-gumba'
wp option delete 'piskotki-gdpr-barva-gumba-povezave'
wp option delete 'piskotki-gdpr-velikost-gumba-povezave'

