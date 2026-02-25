#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tm_replace_howdy_ver'
wp option delete 'tm_replace_howdy_all_languages'
wp option delete 'tm_replace_howdy_mode'
wp option delete 'tm_replace_howdy_values'
wp option delete 'tm_replace_howdy_save'
wp option delete 'techm_replace_howdy'
wp option delete 'techm_replace_howdy_values'

