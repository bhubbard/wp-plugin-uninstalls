#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget-LJRandomOrRecent-titlerandom'
wp option delete 'widget-LJRandomOrRecent-titlerecent'
wp option delete 'widget-LJRandomOrRecent-post'
wp option delete 'widget-LJRandomOrRecent-page'
wp option delete 'widget-LJRandomOrRecent-category'
wp option delete 'widget-LJRandomOrRecent-tag'
wp option delete 'widget-LJRandomOrRecent-default'
wp option delete 'widget-LJRandomOrRecent-numposts'

