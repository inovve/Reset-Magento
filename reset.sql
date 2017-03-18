#-- Magento 1.7.0.0 SQL Table Resets
#-- On initial install Magento has 335 tables

#SET FOREIGN_KEY_CHECKS=0;
#SET FOREIGN_KEY_CHECKS=1;


SET FOREIGN_KEY_CHECKS=0;

#---------------------------------
#-- RESET SECTION --- PRODUCTS ---
#---------------------------------

#-- Stock Tables --
TRUNCATE TABLE `cataloginventory_stock`;
INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');
TRUNCATE TABLE `cataloginventory_stock_item`;
TRUNCATE TABLE `cataloginventory_stock_status`; 
TRUNCATE TABLE `cataloginventory_stock_status_idx`;
TRUNCATE TABLE `cataloginventory_stock_status_tmp`;

#-- Product Tables --
TRUNCATE TABLE `catalog_product_bundle_option`;
TRUNCATE TABLE `catalog_product_bundle_option_value`;
TRUNCATE TABLE `catalog_product_bundle_price_index`;
TRUNCATE TABLE `catalog_product_bundle_selection`;
TRUNCATE TABLE `catalog_product_bundle_selection_price`;
TRUNCATE TABLE `catalog_product_bundle_stock_index`;
TRUNCATE TABLE `catalog_product_enabled_index`;
TRUNCATE TABLE `catalog_product_entity`;
TRUNCATE TABLE `catalog_product_entity_datetime`;
TRUNCATE TABLE `catalog_product_entity_decimal`;
TRUNCATE TABLE `catalog_product_entity_gallery`;
TRUNCATE TABLE `catalog_product_entity_group_price`;
TRUNCATE TABLE `catalog_product_entity_int`;
TRUNCATE TABLE `catalog_product_entity_media_gallery`;
TRUNCATE TABLE `catalog_product_entity_media_gallery_value`;
TRUNCATE TABLE `catalog_product_entity_text`;
TRUNCATE TABLE `catalog_product_entity_tier_price`;
TRUNCATE TABLE `catalog_product_entity_varchar`;
TRUNCATE TABLE `catalog_product_link`;
TRUNCATE TABLE `catalog_product_link_attribute`;
INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');
TRUNCATE TABLE `catalog_product_link_attribute_decimal`;
TRUNCATE TABLE `catalog_product_link_attribute_int`;
TRUNCATE TABLE `catalog_product_link_attribute_varchar`;
TRUNCATE TABLE `catalog_product_link_type`;
INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');
TRUNCATE TABLE `catalog_product_option`;
TRUNCATE TABLE `catalog_product_option_price`;
TRUNCATE TABLE `catalog_product_option_title`;
TRUNCATE TABLE `catalog_product_option_type_price`;
TRUNCATE TABLE `catalog_product_option_type_title`;
TRUNCATE TABLE `catalog_product_option_type_value`;
TRUNCATE TABLE `catalog_product_relation`;
TRUNCATE TABLE `catalog_product_super_attribute`;
TRUNCATE TABLE `catalog_product_super_attribute_label`;
TRUNCATE TABLE `catalog_product_super_attribute_pricing`;
TRUNCATE TABLE `catalog_product_super_link`;
TRUNCATE TABLE `catalog_product_website`;

#-- Compare Items Table
TRUNCATE TABLE `catalog_compare_item`;

#-- Product Related Indexes
TRUNCATE TABLE `catalog_product_index_eav`;
TRUNCATE TABLE `catalog_product_index_eav_decimal`;
TRUNCATE TABLE `catalog_product_index_eav_decimal_idx`;
TRUNCATE TABLE `catalog_product_index_eav_decimal_tmp`;
TRUNCATE TABLE `catalog_product_index_eav_idx`;
TRUNCATE TABLE `catalog_product_index_eav_tmp`;
TRUNCATE TABLE `catalog_product_index_group_price`;
TRUNCATE TABLE `catalog_product_index_price`;
TRUNCATE TABLE `catalog_product_index_price_bundle_idx`;
TRUNCATE TABLE `catalog_product_index_price_bundle_opt_idx`;
TRUNCATE TABLE `catalog_product_index_price_bundle_opt_tmp`;
TRUNCATE TABLE `catalog_product_index_price_bundle_sel_idx`;
TRUNCATE TABLE `catalog_product_index_price_bundle_sel_tmp`;
TRUNCATE TABLE `catalog_product_index_price_bundle_tmp`;
TRUNCATE TABLE `catalog_product_index_price_cfg_opt_agr_idx`;
TRUNCATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp`;
TRUNCATE TABLE `catalog_product_index_price_cfg_opt_idx`;
TRUNCATE TABLE `catalog_product_index_price_cfg_opt_tmp`;
TRUNCATE TABLE `catalog_product_index_price_downlod_idx`;
TRUNCATE TABLE `catalog_product_index_price_downlod_tmp`;
TRUNCATE TABLE `catalog_product_index_price_final_idx`;
TRUNCATE TABLE `catalog_product_index_price_final_tmp`;
TRUNCATE TABLE `catalog_product_index_price_idx`;
TRUNCATE TABLE `catalog_product_index_price_opt_agr_idx`;
TRUNCATE TABLE `catalog_product_index_price_opt_agr_tmp`;
TRUNCATE TABLE `catalog_product_index_price_opt_idx`;
TRUNCATE TABLE `catalog_product_index_price_opt_tmp`;
TRUNCATE TABLE `catalog_product_index_price_tmp`;
TRUNCATE TABLE `catalog_product_index_tier_price`;
TRUNCATE TABLE `catalog_product_index_website`;

#-- Product Flat Tables
#TRUNCATE TABLE `catalog_product_flat_1`;


#-----------------------------------
#-- RESET SECTION --- CATEGORIES ---
#-----------------------------------

TRUNCATE TABLE `catalog_category_entity`;
INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2012-05-24 00:28:25', '2012-05-24 00:28:25', '1', 0, 0, 1),
(2, 3, 3, 1, '2012-05-24 00:28:26', '2012-05-24 00:28:26', '1/2', 1, 1, 0);
TRUNCATE TABLE `catalog_category_entity_datetime`;
TRUNCATE TABLE `catalog_category_entity_decimal`;
TRUNCATE TABLE `catalog_category_entity_int`;
INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 61, 0, 1, 1),
(2, 3, 61, 1, 1, 1),
(3, 3, 36, 0, 2, 1),
(4, 3, 61, 0, 2, 1),
(5, 3, 36, 1, 2, 1),
(6, 3, 61, 1, 2, 1);
TRUNCATE TABLE `catalog_category_entity_text`;
INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 59, 0, 1, NULL),
(2, 3, 59, 1, 1, NULL),
(3, 3, 59, 0, 2, NULL),
(4, 3, 59, 1, 2, NULL);
TRUNCATE TABLE `catalog_category_entity_varchar`;
INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 35, 0, 1, 'Root Catalog'),
(2, 3, 35, 1, 1, 'Root Catalog'),
(3, 3, 37, 1, 1, 'root-catalog'),
(4, 3, 35, 0, 2, 'Default Category'),
(5, 3, 35, 1, 2, 'Default Category'),
(6, 3, 43, 1, 2, 'PRODUCTS'),
(7, 3, 37, 1, 2, 'default-category');
TRUNCATE TABLE `catalog_category_product`;
TRUNCATE TABLE `catalog_category_product_index`;
TRUNCATE TABLE `catalog_category_product_index_enbl_idx`;
TRUNCATE TABLE `catalog_category_product_index_enbl_tmp`;
TRUNCATE TABLE `catalog_category_product_index_idx`;
TRUNCATE TABLE `catalog_category_product_index_tmp`;


#-------------------------------------
#-- RESET SECTION --- ACCOUNT INFO ---
#-------------------------------------

#-- Clean out Notification Inbox
TRUNCATE TABLE `adminnotification_inbox`;

#-- Sales data
TRUNCATE TABLE `sales_flat_creditmemo`;
TRUNCATE TABLE `sales_flat_creditmemo_comment`;
TRUNCATE TABLE `sales_flat_creditmemo_grid`;
TRUNCATE TABLE `sales_flat_creditmemo_item`;
TRUNCATE TABLE `sales_flat_invoice`;
TRUNCATE TABLE `sales_flat_invoice_comment`;
TRUNCATE TABLE `sales_flat_invoice_grid`;
TRUNCATE TABLE `sales_flat_invoice_item`;
TRUNCATE TABLE `sales_flat_order`;
TRUNCATE TABLE `sales_flat_order_address`;
TRUNCATE TABLE `sales_flat_order_grid`;
TRUNCATE TABLE `sales_flat_order_item`;
TRUNCATE TABLE `sales_flat_order_payment`;
TRUNCATE TABLE `sales_flat_order_status_history`;
TRUNCATE TABLE `sales_flat_quote`;
TRUNCATE TABLE `sales_flat_quote_address`;
TRUNCATE TABLE `sales_flat_quote_address_item`;
TRUNCATE TABLE `sales_flat_quote_item`;
TRUNCATE TABLE `sales_flat_quote_item_option`;
TRUNCATE TABLE `sales_flat_quote_payment`;
TRUNCATE TABLE `sales_flat_quote_shipping_rate`;
TRUNCATE TABLE `sales_flat_shipment`;
TRUNCATE TABLE `sales_flat_shipment_comment`;
TRUNCATE TABLE `sales_flat_shipment_grid`;
TRUNCATE TABLE `sales_flat_shipment_item`;
TRUNCATE TABLE `sales_flat_shipment_track`;
TRUNCATE TABLE `sales_invoiced_aggregated`;
TRUNCATE TABLE `sales_invoiced_aggregated_order`;
TRUNCATE TABLE `sales_order_aggregated_created`;
TRUNCATE TABLE `sales_order_aggregated_updated`;
TRUNCATE TABLE `sales_order_tax`;
TRUNCATE TABLE `sales_order_tax_item`;
TRUNCATE TABLE `tax_order_aggregated_created`;
TRUNCATE TABLE `tax_order_aggregated_updated`;
TRUNCATE TABLE `paypal_payment_transaction`;
TRUNCATE TABLE `paypal_settlement_report`;
TRUNCATE TABLE `paypal_settlement_report_row`;

#-- Customer accounts

TRUNCATE TABLE `customer_address_entity`;
TRUNCATE TABLE `customer_address_entity_datetime`;
TRUNCATE TABLE `customer_address_entity_decimal`;
TRUNCATE TABLE `customer_address_entity_int`;
TRUNCATE TABLE `customer_address_entity_text`;
TRUNCATE TABLE `customer_address_entity_varchar`;
TRUNCATE TABLE `customer_entity`;
TRUNCATE TABLE `customer_entity_datetime`;
TRUNCATE TABLE `customer_entity_decimal`;
TRUNCATE TABLE `customer_entity_int`;
TRUNCATE TABLE `customer_entity_text`;
TRUNCATE TABLE `customer_entity_varchar`;

#-- Customer related logs

TRUNCATE TABLE `log_customer`;
TRUNCATE TABLE `log_quote`;
TRUNCATE TABLE `log_summary`;
TRUNCATE TABLE `log_url`;
TRUNCATE TABLE `log_url_info`;
TRUNCATE TABLE `log_visitor`;
TRUNCATE TABLE `log_visitor_info`;
TRUNCATE TABLE `log_visitor_online`;
TRUNCATE TABLE `sales_bestsellers_aggregated_daily`;
TRUNCATE TABLE `sales_bestsellers_aggregated_monthly`;
TRUNCATE TABLE `sales_bestsellers_aggregated_yearly`;
TRUNCATE TABLE `sendfriend_log`;
TRUNCATE TABLE `tag`;
TRUNCATE TABLE `tag_properties`;
TRUNCATE TABLE `tag_relation`;
TRUNCATE TABLE `tag_summary`;
TRUNCATE TABLE `wishlist`;
TRUNCATE TABLE `wishlist_item`;
TRUNCATE TABLE `wishlist_item_option`;
DELETE FROM `catalogsearch_query`;

#-- Newsletter related

TRUNCATE TABLE `newsletter_problem`;
TRUNCATE TABLE `newsletter_queue`;
TRUNCATE TABLE `newsletter_queue_link`;
TRUNCATE TABLE `newsletter_queue_store_link`;
TRUNCATE TABLE `newsletter_subscriber`;
TRUNCATE TABLE `newsletter_template`;


#----------------------------------------
#-- RESET SECTION --- CATALOGUE RULES ---
#----------------------------------------

TRUNCATE TABLE `catalogrule`;
TRUNCATE TABLE `catalogrule_affected_product`;
TRUNCATE TABLE `catalogrule_customer_group`;
TRUNCATE TABLE `catalogrule_group_website`;
TRUNCATE TABLE `catalogrule_product`;
TRUNCATE TABLE `catalogrule_product_price`;
TRUNCATE TABLE `catalogrule_website`;


#------------------------------------
#-- RESET SECTION --- SALES RULES ---
#------------------------------------

TRUNCATE TABLE `salesrule`;
TRUNCATE TABLE `salesrule_coupon`;
TRUNCATE TABLE `salesrule_coupon_usage`;
TRUNCATE TABLE `salesrule_customer`;
TRUNCATE TABLE `salesrule_customer_group`;
TRUNCATE TABLE `salesrule_label`;
TRUNCATE TABLE `salesrule_product_attribute`;
TRUNCATE TABLE `salesrule_website`;


#------------------------------
#-- RESET SECTION --- POLLS ---
#------------------------------

TRUNCATE TABLE `poll`;
TRUNCATE TABLE `poll_answer`;
TRUNCATE TABLE `poll_store`;
TRUNCATE TABLE `poll_vote`;


#-----------------------------------------
#-- RESET SECTION --- CLEAN INDEX LOGS ---
#-----------------------------------------

TRUNCATE TABLE `index_event`;
TRUNCATE TABLE `index_process`;
TRUNCATE TABLE `index_process_event`;
TRUNCATE TABLE `report_event`;
TRUNCATE TABLE `report_viewed_product_index`;

#-------------------------------------
#-- RESET SECTION --- URL REWRITES ---
#-------------------------------------

TRUNCATE TABLE `core_url_rewrite`;

#-----------------------------------
#-- RESET SECTION --- ATTRIBUTES ---
#-----------------------------------

#DELETE FROM `eav_attribute` WHERE `attribute_id` > 133; # This will delete all attributes added since default installation

#DELETE FROM `eav_attribute` WHERE `attribute_id` > 133 AND `entity_type_id` = 4; # This will delete all product only attributes added since default installation

SET FOREIGN_KEY_CHECKS=1;
