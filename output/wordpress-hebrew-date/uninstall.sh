#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hebdate_sunset'
wp option delete 'hebdate_lang'
wp option delete 'hebdate_hide_alafim'
wp option delete 'hebdate_format'
wp option delete 'hebdate_format_custom'
wp option delete 'latitude'
wp option delete 'longitude'

