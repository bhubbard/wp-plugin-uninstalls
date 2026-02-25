#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lp_ert_words_per_minute'
wp option delete 'lp_ert_enabled'
wp option delete 'lp_ert_show_in_homepage'
wp option delete 'lp_ert_show_in_archive'
wp option delete 'lp_ert_css_class'
wp option delete 'lp_ert_before_text'
wp option delete 'lp_ert_after_text'

