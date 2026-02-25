#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aidd_name'
wp option delete 'aidd_description'
wp option delete 'aidd_website'
wp option delete 'aidd_contact'
wp option delete 'aidd_logo'
wp option delete 'aidd_entity_type'
wp option delete 'aidd_jsonld'

