#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ing_ksiegowosc_api_key'
wp option delete 'ing_ksiegowosc_tax_option_meta'
wp option delete 'ing_ksiegowosc_db_schema'

