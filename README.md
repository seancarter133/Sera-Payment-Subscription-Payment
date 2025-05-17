# Sera-Payment-Subscription-Payment

## Introduction
This Repository Presents a comprehensive exploration and visuals representation of subscription payment trends of Sera, a global software-as-a-service provider specializing in delivering data driven financial insights for investment strategy and decision-making.

## Objectives
<ul>
  <li>Clean and transform raw data into useful insights</li>
  <li>The monthly trend of revenue,NGN,and USD</li>
  <li>The monthly trend of subscribers</li>
  <li>Current month revenue + monthly change in %</li>
  <li>Current month Subscribers + monthly change in %</li>
  <li>Location of where users are attempting to pay from</li>
  <li>Spread of successful payments by channel and card_type</li>
</ul>

## Tools
<ul>
<li>PgAdmin4</li>
<li>Power Bi</li>
</ul>

## Techniques and skills
<ul>
  <li>Data Modelling</li>
  <li>Data Transformation</li>
  <li>Data Normalization</li>
  <li>DAX</li> 
  <li>Bookmarks</li>
  <li>Data Visualization</li>
</ul>

## Data Model
The Data was first cleaned with sql in PgAdmin4 before it was transformed in power query, A dimension table was created mapping the 2-digit country codes tothe actual country names. A date table was also created.
![Data Model](https://github.com/seancarter133/Sera-Payment-Subscription-Payment/blob/main/images/Data%20Model.jpg)

## Dashboard Overview
![Dashboard View](https://github.com/seancarter133/Sera-Payment-Subscription-Payment/blob/main/images/sera_sales.jpg)

## Business Problem
<ul>
  <li>Sharp Decline In monthly Performance: There is a signficant revenue and subscribers loss in the current month indicates poor customer retention or decreased customer acquisition.</li>
  <li>Low Total Subscriber Base: Small user base for a subscription-based business. Growth may be too slow to scale sustainably </li>
  <li>limited Geographic Revenue Spread</li>
  <li>Payment Channel Dependency:Majority of successful payments are through card(57.78%),followed by bank transfer(39.37%): over-reliance on one or two payment channels increases business risk if there are disruptions or issues with those methods.</li>
</ul>

