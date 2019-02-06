//
//  HomeModel.swift
//  LinkDevTask
//
//  Created by Ahmed on 2/5/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import Foundation

import Foundation

struct HomeModel: Codable {
    let id: Int?
    let title, titleEN, titleAR, titleTrimmed: String?
    let titleTrimmedEN: String?
    let titleTrimmedAR: String?
    let parentDepartment: ParentDepartment?
    let parentServiceID, parentService, parentServiceEN, parentServiceAR: String?
    let brief, briefEN, briefAR, briefTrimmed: String?
    let briefTrimmedEN: String?
    let briefTrimmedAR: String?
    let description, descriptionEN, descriptionAR, prerequisites: String?
    let prerequisitesEN, prerequisitesAR, requiredDocuments, requiredDocumentsEN: String?
    let requiredDocumentsAR, fees, feesEN, feesAR: String?
    let timeFrame, timeFrameEN, timeFrameAR: String?
    let serviceChannels, serviceChannelsEN, serviceChannelsAR: ServiceChannels?
    let policiesAndProcedures, policiesAndProceduresEN, policiesAndProceduresAR, eServiceRequestURL: String?
    let eServiceRequestURLEN, eServiceRequestURLAR: String?
    let eServiceRequestFullURL: String?
    let videoID: String?
    let imageSrc, mobileImageSrc: String?
    let detailsURL: String?
    let hasSubServices: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case title = "Title"
        case titleEN = "TitleEN"
        case titleAR = "TitleAR"
        case titleTrimmed = "TitleTrimmed"
        case titleTrimmedEN = "TitleTrimmedEN"
        case titleTrimmedAR = "TitleTrimmedAR"
        case parentDepartment = "ParentDepartment"
        case parentServiceID = "ParentServiceID"
        case parentService = "ParentService"
        case parentServiceEN = "ParentServiceEN"
        case parentServiceAR = "ParentServiceAR"
        case brief = "Brief"
        case briefEN = "BriefEN"
        case briefAR = "BriefAR"
        case briefTrimmed = "BriefTrimmed"
        case briefTrimmedEN = "BriefTrimmedEN"
        case briefTrimmedAR = "BriefTrimmedAR"
        case description = "Description"
        case descriptionEN = "DescriptionEN"
        case descriptionAR = "DescriptionAR"
        case prerequisites = "Prerequisites"
        case prerequisitesEN = "PrerequisitesEN"
        case prerequisitesAR = "PrerequisitesAR"
        case requiredDocuments = "RequiredDocuments"
        case requiredDocumentsEN = "RequiredDocumentsEN"
        case requiredDocumentsAR = "RequiredDocumentsAR"
        case fees = "Fees"
        case feesEN = "FeesEN"
        case feesAR = "FeesAR"
        case timeFrame = "TimeFrame"
        case timeFrameEN = "TimeFrameEN"
        case timeFrameAR = "TimeFrameAR"
        case serviceChannels = "ServiceChannels"
        case serviceChannelsEN = "ServiceChannelsEN"
        case serviceChannelsAR = "ServiceChannelsAR"
        case policiesAndProcedures = "PoliciesAndProcedures"
        case policiesAndProceduresEN = "PoliciesAndProceduresEN"
        case policiesAndProceduresAR = "PoliciesAndProceduresAR"
        case eServiceRequestURL = "EServiceRequestURL"
        case eServiceRequestURLEN = "EServiceRequestURLEN"
        case eServiceRequestURLAR = "EServiceRequestURLAR"
        case eServiceRequestFullURL = "EServiceRequestFullURL"
        case videoID = "VideoID"
        case imageSrc = "ImageSrc"
        case mobileImageSrc = "MobileImageSrc"
        case detailsURL = "DetailsURL"
        case hasSubServices
    }
}

struct ParentDepartment: Codable {
    let id: Int?
    let title, titleEN: Title?
    let titleAR: TitleAR?
    let imageSrc: String?
    let brief, briefEN: String?
    let briefAR: BriefAR?
    let briefTrimmed, briefTrimmedEN: BriefTrimmed?
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case title = "Title"
        case titleEN = "TitleEN"
        case titleAR = "TitleAR"
        case imageSrc = "ImageSrc"
        case brief = "Brief"
        case briefEN = "BriefEN"
        case briefAR = "BriefAR"
        case briefTrimmed = "BriefTrimmed"
        case briefTrimmedEN = "BriefTrimmedEN"
    }
}

enum BriefAR: String, Codable {
    case نبذةخدمةترخيصمنشأة = "نبذة خدمة ترخيص منشأة"
}

enum BriefTrimmed: String, Codable {
    case dhcrOffersCommercialLicesnsesServicesForAllEntitiesT = "DHCR offers commercial licesnses services for all entities t ..."
}

enum Title: String, Codable {
    case commercialLicenseServices = "Commercial License Services"
}

enum TitleAR: String, Codable {
    case خدمةترخيصمنشأة = "خدمة ترخيص منشأة"
}

enum ServiceChannels: String, Codable {
    case empty = ""
    case online = "Online"
    case purpleOnline = "Online "
    case serviceChannelsOnline = "\u{200b}Online"
}

