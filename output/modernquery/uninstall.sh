#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modernquery_boost_field_name'
wp option delete 'modernquery_domain_name'
wp option delete 'modernquery_property_key'
wp option delete 'modernquery_search_input_selector'

