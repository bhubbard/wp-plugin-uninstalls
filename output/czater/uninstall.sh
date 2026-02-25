#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CzaterId'
wp option delete 'czaterAutoCompliteLogin'
wp option delete 'czaterAutoCompliteEmail'
wp option delete 'css_template'
wp option delete 'czaterCode'

