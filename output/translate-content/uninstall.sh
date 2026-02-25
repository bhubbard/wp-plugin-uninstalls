#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TRANSLATECONTENT_google_api'
wp option delete 'TRANSLATECONTENT_simpleMetabox'
wp option delete 'hide-translate-content-logo'

