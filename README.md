# E-commerce Database Schema

## Overview
This project contains a simple SQL schema for an e-commerce platform.
It demonstrates database design, normalization, and relationships between entities.

## Entities
- Customer
- Product
- Orders
- Order_Item
- Payment

## Relationships
- One customer can have many orders.
- Each order can have multiple order items.
- Each product can appear in many order items.
- Each order has one payment.

## Files
- `schema.sql` → Contains all CREATE TABLE statements.
- `ER_Diagram.png` → Shows relationships between entities.

## Tools Used
- MySQL Workbench (for SQL and ER diagram)

