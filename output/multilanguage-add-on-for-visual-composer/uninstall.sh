#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_languages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_language'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_switcher'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_autotranslate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_styling'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_googleapikey'"
wp option delete 'visual_composer_multilanguage_default_language'
wp option delete 'visual_composer_multilanguage_languages'
wp option delete 'visual_composer_multilanguage_switcher'
wp option delete 'visual_composer_multilanguage_googleapikey'
wp option delete 'visual_composer_multilanguage_styling'
wp option delete 'visual_composer_multilanguage_autotranslate'

