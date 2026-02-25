#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'related_articles_by_tag_mode'
wp option delete 'related_articles_by_tag_title_type'
wp option delete 'related_articles_by_tag_title'
wp option delete 'related_articles_by_tag_apply'
wp option delete 'related_articles_by_tag_order'

