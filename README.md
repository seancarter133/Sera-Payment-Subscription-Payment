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
  <li><b>Sharp Decline In monthly Performance</b>: There is a signficant revenue and subscribers loss in the current month indicates poor customer retention or decreased customer acquisition.</li>
  <li><b>Low Total Subscriber Base</b>: Small user base for a subscription-based business. Growth may be too slow to scale sustainably </li>
  <li><b>limited Geographic Revenue Spread.</b></li>
  <li><b>Payment Channel Dependency</b>:Majority of successful payments are through card(57.78%),followed by bank transfer(39.37%): over-reliance on one or two payment channels increases business risk if there are disruptions or issues with those methods.</li>
</ul>

## Recommendation
<ol>
  <li>Boost Subscriber Acquisition</li><ul><li>implement loyalty programs or tiered subscription to retain existing users</li><li>Use surveys or feedback tools to understand and addresswhy users drop off</li><li>Offer limited-time discounts or value-added packages to attract new users.</li></ul>
  <li>Stabilize Monthly Performance</li><ul><li>Analyze the causes of high churn after peak months(e.g,August)</li><li>Maintain a consistent content, engagement, or product update calender to keep subscribers engaged throughout the year.</li></ul>
  <li>Expand Geographic Reach</li><ul><li>Partner with local agents, platforms, or companies to promote services in new regions</li><li>identify high-potential markets outside Africa(e.g, North America , Europe ) and localize offerings (currency, language, payments methods).</li></ul>
  <li>Diversify and optimize payments channels</li><ul><li>Work with Financial partners to ensure reliability and seamless transactrions across all platforms.</li><li>Monitor failed transaction rates by channel and address technical issues or user experience problems promply.</li></ul>
</ol>

