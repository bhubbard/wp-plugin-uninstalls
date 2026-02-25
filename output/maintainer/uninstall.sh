#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maintainer_secondary_text'
wp option delete 'maintainer_ips'
wp option delete 'maintainer_roles'
wp option delete 'maintainer_active'
wp option delete 'maintainer_query'
wp option delete 'maintainer_show_welcome'
wp option delete 'maintainer_primary_text'
wp option delete 'maintainer_page_title'
wp option delete 'maintainer_page_description'
wp option delete 'maintainer_background_color'
wp option delete 'maintainer_text_color'
wp option delete 'maintainer_noindex'
wp option delete 'maintainer_template'

