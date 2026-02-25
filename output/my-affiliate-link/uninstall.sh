#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my-affiliate-link-siteurl'
wp option delete 'my-affiliate-link-prefix'
wp option delete 'my-affiliate-link-cssclass'
wp option delete 'my-affiliate-link-onclick'
wp option delete 'my-affiliate-link-nofollow'
wp option delete 'my-affiliate-link-target'
wp option delete 'my-affiliate-link-trailingslash'
wp option delete 'my-affiliate-link-childsep'
wp option delete 'my-affiliate-link-amazontrackingid'
wp option delete 'my-affiliate-link-class'

