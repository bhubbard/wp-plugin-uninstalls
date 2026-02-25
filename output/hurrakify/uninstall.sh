#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hurraki_tooltip_wiki'
wp option delete 'hurraki_tooltip_key_words_last_update_time'
wp option delete 'hurraki_tooltip_max_word'
wp option delete 'hurraki_tooltip_key_words_en'
wp option delete 'hurraki_tooltip_key_words_eo'
wp option delete 'hurraki_tooltip_key_words_de'
wp option delete 'hurraki_tooltip_key_words_ma'
wp option delete 'hurraki_tooltip_key_words_it'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hurraki_tooltip_key_words_%'"

# Delete Transients
wp transient delete 'hurrakify_updating'

# Clear Cron Jobs
wp cron event delete 'hurrakify_weekly_update_check'

