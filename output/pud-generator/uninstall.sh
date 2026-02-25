#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pud_max_page'
wp option delete 'pud_default_author'
wp option delete 'pud_page_status'
wp option delete 'pud_page_visibility'
wp option delete 'pud_tour_generator'
wp option delete 'pud_tour_manage'
wp option delete 'pud_tour_placeholder'

