def getData(items):
    region = dict()
    dates = set()

    for item in items:
        dates.add(item[0])
        region_key = item[1]

        region_date_wise_data = region.get(region_key,list())
        region_date_wise_data.append(item)
        
        region[region_key] = region_date_wise_data

    date_list = list(dates)
    date_list.sort()
    date_list  = [d.strftime("%d-%b") for d in date_list]
    
    return date_list, region
