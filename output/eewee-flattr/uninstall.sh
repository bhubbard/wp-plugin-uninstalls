#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eewee_twittercard_val_enabled'
wp option delete 'eewee_twittercard_val_method'
wp option delete 'eewee_twittercard_val_site'
wp option delete 'eewee_twittercard_val_creator'

