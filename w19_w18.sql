 -- world happiness rank by country



select *
from world.`2019`;


## filter to few column  ## 

select `overall rank`,
        `country or region`,
        `score`,
        `GDP per capita`,
        `freedom to make life choices`,
        `healthy life expectancy`
from world.`2019`
where score >= 6;



-- order by high GDP


select `overall rank`,
        `country or region`,
        `score`,
        `GDP per capita`,
        `freedom to make life choices`,
        `healthy life expectancy`
from world.`2019`
where score >= 6
order by `GDP per capita` desc ;

-- GDP per capita VS healthy life expectance

select `overall rank`,
        `country or region`as country ,
        `score`,
        `GDP per capita`,
        `freedom to make life choices`,
        `healthy life expectancy`
from world.`2019` w19;

-- social support vs healthy life expectance 

select `overall rank`,
        `country or region`as country ,
        `score`,
        
        `social support`,
        `healthy life expectancy`
from world.`2019` w19;

-- 2018 data 

select `overall rank` as rank18,
        `country or region`as country ,
        `score` as score18,
        `GDP per capita`,
        `social support`,
        `healthy life expectancy` 
from world.`2018` w18
order by score;

-- joining w19 & w18
use world; 
select *
        
        
from `2018` 
join `2019`       
    ON `2018`.`overall rank` = `2019`.`overall rank`
order by `overall rank`;

-- selecting few column

 

-- creating view for viz

create view gdpVShealthlifeexpectance as
select `overall rank`,
        `country or region`as country ,
        `score`,
        `GDP per capita`,
        `freedom to make life choices`,
        `healthy life expectancy`
from world.`2019` w19;