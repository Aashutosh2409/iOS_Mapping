//
//  ViewController.m
//  mapping
//
//  Created by Aashutosh Singh on 2/1/17.
//  Copyright © 2017 Aashutosh Singh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mapView.showsUserLocation=YES;
    self.mapView.delegate=self;
    CLLocationCoordinate2D aC;
    
    
    //37.422877, -122.084421
    aC.latitude=37.422877;
    aC.longitude=-122.084421;

    
    MKPointAnnotation *aP=[[MKPointAnnotation alloc]init];
    aP.coordinate=aC;
    aP.title=@"Google";
    aP.subtitle=@"California";
    [mapView addAnnotation:aP];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)ZoomIN :(id)sender{
//    MKUserLocation *uL=self.mapView.userLocation;
//    MKCoordinateRegion region=MKCoordinateRegionMakeWithDistance(uL.location.coordinate, 50, 50);
//    [self.mapView setRegion:region animated:YES];
//}
//
//- (IBAction)ZoomOUT :(id)sender{
//    MKUserLocation *uL=self.mapView.userLocation;
//    MKCoordinateRegion region=MKCoordinateRegionMakeWithDistance(uL.location.coordinate, -50, -50);
//    [self.mapView setRegion:region animated:YES];
//}

- (IBAction)changeMapView:(id)sender {
    if(mapView.mapType==MKMapTypeStandard)
        mapView.mapType=MKMapTypeSatellite;
    else
        self.mapView.mapType=MKMapTypeStandard;
}

- (IBAction)ZoomOUT:(id)sender {
    MKUserLocation *uL=self.mapView.userLocation;
    MKCoordinateRegion region=MKCoordinateRegionMakeWithDistance(uL.location.coordinate,-50,-50);
        [self.mapView setRegion:region animated:YES];

}


-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    self.mapView.centerCoordinate=userLocation.location.coordinate;
}
@end
