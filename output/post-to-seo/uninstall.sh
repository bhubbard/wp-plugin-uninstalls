#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_option_name'
wp option delete 'postToSEO_stopwords'
wp option delete 'postToSEO_permanentKeywords'

