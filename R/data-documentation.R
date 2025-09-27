# healthmotionR - A Comprehensive Collection of Health and Human Motion Datasets
# Version 0.1.0
# Copyright (C) 2025 Oscar Alejandro Sialer Gallo
# Licensed under the MIT License.
# See the LICENSE file in the root directory for full license text.

#' Simulated Surgery Procedures Data
#'
#' This dataset, surgerydat_df, is a data frame containing simulated data of surgery
#' procedures performed at multiple hospitals. It includes information on patients,
#' their survival times, and hospital-specific risk characteristics.
#'
#' The dataset comprises data from 45 simulated hospitals with patient arrivals
#' occurring within the first 400 days after the start of the study. Patient survival
#' times were determined using a risk-adjusted Cox proportional hazards model with
#' coefficients: age = 0.003, BMI = 0.02, and sexmale = 0.2, along with an exponential
#' baseline hazard rate \eqn{h_0(t, \lambda = 0.01) e^\mu}. Hospital-specific hazard rate
#' increases were sampled from a normal distribution:
#'
#' \deqn{\theta \sim N(\log(1), sd = 0.4)}
#'
#' This means that the average failure rate of hospitals in the dataset is the baseline
#' (\eqn{\theta = 0}), with some hospitals experiencing higher or lower rates. The true
#' failure rate is given in the variable \code{exptheta}. Patient arrival rates
#' (\eqn{\psi}) differ across hospitals:
#'
#' \itemize{
#'   \item Hospitals 1–5 & 16–20: 0.5 patients per day (small hospitals)
#'   \item Hospitals 6–10 & 21–25: 1 patient per day (medium hospitals)
#'   \item Hospitals 11–15 & 26–30: 1.5 patients per day (large hospitals)
#' }
#'
#' The dataset name has been kept as 'surgerydat_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been
#' modified in any way.
#'
#' @name surgerydat_df
#' @format A data frame with 32,529 observations and 9 variables:
#' \describe{
#'   \item{entrytime}{Numeric vector indicating the patient’s entry time into the study (in days)}
#'   \item{survtime}{Numeric vector indicating survival time (in days)}
#'   \item{censorid}{Numeric indicator of censoring status}
#'   \item{unit}{Numeric vector identifying the hospital unit (1–45)}
#'   \item{exptheta}{Numeric vector indicating the true failure rate of the hospital}
#'   \item{psival}{Numeric vector indicating the hospital’s patient arrival rate (\eqn{\psi})}
#'   \item{age}{Numeric vector indicating the patient’s age (in years)}
#'   \item{sex}{Factor with 2 levels indicating patient sex}
#'   \item{BMI}{Numeric vector indicating the patient’s body mass index}
#' }
#' @source Data taken from the success package version 1.1.1.
#' @usage data(surgerydat_df)
#' @export
load("data/surgerydat_df.rda")
NULL


#' Hip and Knee Angle while Walking
#'
#' This dataset, angle_walk_array, is a 3-dimensional array containing hip
#' and knee angle data (in degrees) for 39 boys measured during walking. Each observation
#' records the hip and knee joint angles across 20 equally spaced points of a movement cycle.
#'
#' The dataset name has been kept as angle_walk_array to avoid confusion with other
#' datasets in the R ecosystem. This naming convention helps distinguish this dataset as
#' part of the healthmotionR package and assists users in identifying its specific
#' characteristics. The suffix _array indicates that the dataset is an array.
#' The original content has not been modified in any way.
#'
#' @name angle_walk_array
#' @format A 3-dimensional numeric array with 1,560 values and dimensions:
#' \describe{
#'   \item{[1:20]}{Movement cycle points}
#'   \item{[1:39]}{Individual subjects (boys)}
#'   \item{[1:2]}{Joint angle type: \code{"Hip Angle"}, \code{"Knee Angle"}}
#' }
#' @source Data taken from the \pkg{fda} package version 6.3.0.
#' @usage data(angle_walk_array)
#' @export
load("data/angle_walk_array.rda")
NULL


#' Motion Sense Dataset
#'
#' This dataset, motion_sense_list, is a list containing smartphone sensor measurements
#' of user acceleration and pitch attitude collected from 24 individuals performing
#' various physical activities. The dataset includes time-series data recorded by
#' accelerometer and gyroscope sensors under consistent environmental conditions.
#'
#' Participants (n = 24) of varying gender, age, weight, and height performed
#' four distinct activities: jogging, walking, sitting, and standing.
#' Additional recordings also included stair movements (upstairs and downstairs).
#'
#' The dataset name has been kept as 'motion_sense_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is stored as a list object.
#' The original content has not been modified in any way.
#'
#' @name motion_sense_list
#' @format A list of length 2:
#' \describe{
#'   \item{user_acceleration}{Numeric matrix of dimensions 200 × 96 containing acceleration
#'   measurements for each participant across activities}
#'   \item{pitch_attitude}{Numeric matrix of dimensions 200 × 96 containing pitch angle
#'   measurements for each participant across activities}
#' }
#' @source Data taken from the \pkg{ReMFPCA} package version 2.0.0.
#' @usage data(motion_sense_list)
#' @export
load("data/motion_sense_list.rda")
NULL


#' Body Temperature and Heart Rate
#'
#' This dataset, body_metrics_df, is a data frame containing measurements of
#' body temperature and heart rate for 130 healthy individuals. It was used to
#' investigate the claim that "normal" human body temperature is 98.6 degrees
#' Fahrenheit.
#'
#' The dataset name has been kept as 'body_metrics_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name body_metrics_df
#' @format A data frame with 130 observations and 3 variables:
#' \describe{
#'   \item{temperature}{Numeric vector indicating the body temperature of each individual (degrees Fahrenheit)}
#'   \item{gender}{Integer code indicating the gender of the individual}
#'   \item{hr}{Integer vector indicating the heart rate (beats per minute)}
#' }
#' @source Data taken from the \pkg{UsingR} package version 2.0-7.
#' @usage data(body_metrics_df)
#' @export
load("data/body_metrics_df.rda")
NULL


#' Peak Knee Velocity in Walking
#'
#' This dataset, knee_speed_tbl_df, is a tibble containing measurements of
#' peak knee velocity during walking at both flexion and extension. The data
#' originate from studies investigating functional performance in individuals
#' with cerebral palsy.
#'
#' The dataset name has been kept as 'knee_speed_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is stored as a tibble (a modern data frame).
#' The original content has not been modified in any way.
#'
#' @name knee_speed_tbl_df
#' @format A tibble with 2 variables:
#' \describe{
#'   \item{flexion}{Numeric values indicating peak knee velocity at flexion}
#'   \item{extension}{Numeric values indicating peak knee velocity at extension}
#' }
#' @source Data taken from the \pkg{pubh} package version 2.0.0.
#' @usage data(knee_speed_tbl_df)
#' @export
load("data/knee_speed_tbl_df.rda")
NULL


#' Infant Walking
#'
#' This dataset, infant_walking_df, is a data frame containing the ages (in months)
#' at which 12 infants were reported by their mothers to have started walking.
#' The infants were randomly assigned to either an "exercise" or "no-exercise" group
#' as part of the study conducted by Zelazo et al. (1972). The data are also presented
#' in Table 9.8 of Wolfe and Schneider, *Intuitive Introductory Statistics*.
#'
#' The dataset name has been kept as 'infant_walking_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name infant_walking_df
#' @format A data frame with 6 observations and 2 variables:
#' \describe{
#'   \item{exercise}{Numeric vector indicating the age at which infants in the exercise group began walking (months)}
#'   \item{no_exercise}{Numeric vector indicating the age at which infants in the no-exercise group began walking (months)}
#' }
#' @source Data taken from the \pkg{IIS} package version 1.1.
#' @usage data(infant_walking_df)
#' @export
load("data/infant_walking_df.rda")
NULL


#' Meniscal Repairs Load at Failure
#'
#' This dataset, meniscal_list, contains the load at failure for 18 cadaveric menisci
#' repaired by one of three techniques: the FasT-Fix Meniscal Repair Suture System (FasT-Fix),
#' the use of biodegradable Meniscus Arrows (MA), and the Vertical Mattress Sutures (VMS) approach.
#' The data are also presented in Table 12.1 of Wolfe and Schneider - Intuitive Introductory Statistics.
#'
#' The dataset name has been kept as 'meniscal_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is stored as a list structure.
#' The original content has not been modified in any way.
#'
#' @name meniscal_list
#' @format A list with 3 numeric components, each containing 6 observations:
#' \describe{
#'   \item{FasT-Fix}{Numeric vector. Load at failure values for menisci repaired with the FasT-Fix system.}
#'   \item{Meniscus Arrows}{Numeric vector. Load at failure values for menisci repaired with biodegradable Meniscus Arrows.}
#'   \item{Vertical Mattress}{Numeric vector. Load at failure values for menisci repaired with Vertical Mattress Sutures.}
#' }
#' @source Data taken from the \pkg{IIS} package, version 1.1.
#' @usage data(meniscal_list)
#' @export
load("data/meniscal_list.rda")
NULL


#' StandWalkJump Multivariate Time Series
#'
#' This dataset, StandWalkJump_list, is a multivariate time series (MTS) involving
#' short-duration ECG signals recorded from a healthy 25-year-old male performing
#' different physical activities. The dataset is structured to allow analysis of
#' physiological responses across 27 separate trials.
#'
#' The dataset name has been kept as 'StandWalkJump_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is a list structure. The original content has not been
#' modified in any way.
#'
#' @name StandWalkJump_list
#' @format A list with 2 components:
#' \describe{
#'   \item{data}{A list of 27 numeric matrices, each of dimension 2500 × 4,
#'   representing ECG signals recorded during different physical activities.}
#'   \item{classes}{Numeric vector of length 27 indicating the activity label
#'   corresponding to each trial.}
#' }
#' @source Data taken from the \pkg{mlmts} package, version 1.1.2.
#' @usage data(StandWalkJump_list)
#' @export
load("data/StandWalkJump_list.rda")
NULL


#' Finger Movements Multivariate Time Series
#'
#' This dataset, FingerMovements_char, refers to multivariate time series (MTS)
#' indicating the finger movements of a subject while typing at a computer keyboard.
#' In this version, the dataset is represented as a character string with instructions
#' on how to obtain the full dataset from an external package.
#'
#' The dataset name has been kept as 'FingerMovements_char' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'char' indicates that the dataset is stored as a character object.
#' The original content has not been modified in any way.
#'
#' @name FingerMovements_char
#' @format A character vector of length 1, containing instructions for accessing the full dataset
#' from the \pkg{ueadata1} package.
#' @source Data taken from the \pkg{mlmts} package, version 1.1.2.
#' @usage data(FingerMovements_char)
#' @export
load("data/FingerMovements_char.rda")
NULL


#' Hand Movement Direction Multivariate Time Series
#'
#' This dataset, HandMovementDir_char, refers to multivariate time series (MTS)
#' indicating the movement of a joystick by two subjects with their hand and wrist.
#' In this version, the dataset is represented as a character string with instructions
#' on how to obtain the full dataset from an external package.
#'
#' The dataset name has been kept as 'HandMovementDir_char' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'char' indicates that the dataset is stored as a character object.
#' The original content has not been modified in any way.
#'
#' @name HandMovementDir_char
#' @format A character vector of length 1, containing instructions for accessing the full dataset
#' from the \pkg{ueadata1} package.
#' @source Data taken from the \pkg{mlmts} package, version 1.1.2.
#' @usage data(HandMovementDir_char)
#' @export
load("data/HandMovementDir_char.rda")
NULL


#' Heartbeat Multivariate Time Series
#'
#' This dataset, Heartbeat_char, refers to multivariate time series (MTS)
#' indicating heart sound from healthy patients and pathological patients
#' (with a confirmed cardiac diagnosis). In this version, the dataset is
#' represented as a character string with instructions on how to obtain
#' the full dataset from an external package.
#'
#' The dataset name has been kept as 'Heartbeat_char' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'char' indicates that the dataset is stored as a character object.
#' The original content has not been modified in any way.
#'
#' @name Heartbeat_char
#' @format A character vector of length 1, containing instructions for accessing the full dataset
#' from the \pkg{ueadata1} package.
#' @source Data taken from the \pkg{mlmts} package, version 1.1.2.
#' @usage data(Heartbeat_char)
#' @export
load("data/Heartbeat_char.rda")
NULL


#' Atrial Fibrillation Multivariate Time Series
#'
#' This dataset, AtrialFibrillation_list, is a multivariate time series (MTS)
#' consisting of two-channel ECG recordings of atrial fibrillation. The database
#' was created from data used in the Computers in Cardiology Challenge 2004.
#'
#' The dataset name has been kept as 'AtrialFibrillation_list' to avoid confusion
#' with other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the healthmotionR package and assists users in identifying
#' its specific characteristics. The suffix 'list' indicates that the dataset is stored
#' as a list object. The original content has not been modified in any way.
#'
#' @name AtrialFibrillation_list
#' @format A list with 2 components:
#' \describe{
#'   \item{data}{A list of 30 numeric matrices, each of dimension 640 × 2,
#'   representing two-channel ECG recordings.}
#'   \item{classes}{A numeric vector of length 30, indicating the class labels
#'   associated with each multivariate time series.}
#' }
#' @source Data taken from the \pkg{mlmts} package, version 1.1.2.
#' @usage data(AtrialFibrillation_list)
#' @export
load("data/AtrialFibrillation_list.rda")
NULL


#' Basic Motions Multivariate Time Series
#'
#' This dataset, BasicMotions_list, is a multivariate time series (MTS) of four
#' students performing four different activities while wearing a smart watch.
#'
#' The dataset name has been kept as 'BasicMotions_list' to avoid confusion with
#' other datasets in the R ecosystem. This naming convention helps distinguish
#' this dataset as part of the healthmotionR package and assists users in identifying
#' its specific characteristics. The suffix 'list' indicates that the dataset is
#' stored as a list object. The original content has not been modified in any way.
#'
#' @name BasicMotions_list
#' @format A list with 2 components:
#' \describe{
#'   \item{data}{A list of 80 numeric matrices, each of dimension 100 × 6,
#'   representing six-channel sensor recordings from the smart watch.}
#'   \item{classes}{A numeric vector of length 80, indicating the class labels
#'   associated with each multivariate time series.}
#' }
#' @source Data taken from the \pkg{mlmts} package, version 1.1.2.
#' @usage data(BasicMotions_list)
#' @export
load("data/BasicMotions_list.rda")
NULL


#' Stepping and Heart Rate
#'
#' This dataset, Stepping_df, is a data frame containing heart rate measurements of
#' subjects performing stepping exercises at different heights and frequencies. Each
#' subject's resting heart rate was measured before a trial (HRInit) and after stepping
#' (HRFinal). Step heights include 5.75 inches (Low) and 11.5 inches (High), and stepping
#' frequencies include 14 steps/min (Slow), 21 steps/min (Medium), and 28 steps/min (Fast),
#' resulting in six possible height/frequency combinations. Each trial lasted three minutes,
#' with subjects kept on pace by an electric metronome and heart rate counted by an experimenter.
#'
#' The dataset name has been kept as 'Stepping_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not
#' been modified in any way.
#'
#' @name Stepping_df
#' @format A data frame with 30 observations and 6 variables:
#' \describe{
#'   \item{Order}{Numeric vector indicating the order of the measurement.}
#'   \item{Block}{Numeric vector indicating the block or session number.}
#'   \item{Height}{Factor with 2 levels indicating step height (1 = Low, 2 = High).}
#'   \item{Freq}{Factor with 3 levels indicating stepping frequency (1 = Slow, 2 = Medium, 3 = Fast).}
#'   \item{HRInit}{Numeric vector indicating the subject's heart rate before the trial (beats per minute).}
#'   \item{HRFinal}{Numeric vector indicating the subject's heart rate after the trial (beats per minute).}
#' }
#' @source Data taken from the sur package version 1.0.4.
#' @usage data(Stepping_df)
#' @export
load("data/Stepping_df.rda")
NULL


#' Simulated Motion Paths
#'
#' This dataset, motionpaths_list, is a list containing simulated motion paths.
#' It includes trajectories represented as numeric matrices and corresponding
#' group classifications.
#'
#' The dataset name has been kept as 'motionpaths_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is a list object. The original content has not been modified
#' in any way.
#'
#' @name motionpaths_list
#' @format A list with 2 components:
#' \describe{
#'   \item{trajectories}{A numeric matrix with dimensions [40, 10], representing simulated motion trajectories}
#'   \item{groups}{A factor vector with 4 levels indicating group classifications}
#' }
#' @source Data taken from the RRPP package version 2.1.2.
#' @usage data(motionpaths_list)
#' @export
load("data/motionpaths_list.rda")
NULL


#' Activity Labels for Human Activity Monitoring
#'
#' This dataset, z_labels_monitoring_df, is a data frame containing the labelled activities
#' recorded during the observation period corresponding to the data object z.acc.
#'
#' The dataset name has been kept as 'z_labels_monitoring_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name z_labels_monitoring_df
#' @format A data frame with 6 observations and 3 variables:
#' \describe{
#'   \item{activity}{Character string indicating the recorded activity}
#'   \item{start}{Integer value indicating the start time of the activity}
#'   \item{end}{Integer value indicating the end time of the activity}
#' }
#' @source Data taken from the TrendLSW package version 1.0.2.
#' @usage data(z_labels_monitoring_df)
#' @export
load("data/z_labels_monitoring_df.rda")
NULL


#' Walking Data
#'
#' This dataset, walking_df, is a data frame containing demographic and categorical
#' information from walking activity observations. It includes sex, age, ordered factors
#' related to the walking activity, and the source of the data.
#'
#' The dataset name has been kept as 'walking_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name walking_df
#' @format A data frame with 890 observations and 5 variables:
#' \describe{
#'   \item{sex}{Factor indicating the sex of the participant (2 levels)}
#'   \item{age}{Numeric value indicating the age of the participant}
#'   \item{YA}{Ordered factor with 4 levels related to walking activity A}
#'   \item{YB}{Ordered factor with 4 levels related to walking activity B}
#'   \item{src}{Factor indicating the source of the data (3 levels)}
#' }
#' @source Data taken from the TrendLSW package version 1.0.2.
#' @usage data(walking_df)
#' @export
load("data/walking_df.rda")
NULL


#' Walking Disability Data
#'
#' This dataset, walking_df, is a data frame containing measurements of walking disability
#' collected in studies A, B, and E. It follows a clinical trial data structure and includes
#' identifiers, visit information, test codes, test names, measurement results, and related metadata.
#'
#' The dataset name has been kept as 'walking_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name walking_df
#' @format A data frame with 29,643 observations and 24 variables:
#' \describe{
#'   \item{STUDYID}{Character string indicating the study identifier}
#'   \item{DOMAIN}{Character string indicating the domain abbreviation}
#'   \item{USUBJID}{Character string indicating the unique subject identifier}
#'   \item{VSSEQ}{Numeric value indicating the sequence number}
#'   \item{VSTESTCD}{Character string indicating the vital signs test short name}
#'   \item{VSTEST}{Character string indicating the vital signs test name}
#'   \item{VSPOS}{Character string indicating the subject’s position during measurement}
#'   \item{VSORRES}{Character string indicating the result or finding in original units}
#'   \item{VSORRESU}{Character string indicating the original measurement units}
#'   \item{VSSTRESC}{Character string indicating the character result/finding in standard format}
#'   \item{VSSTRESN}{Numeric value indicating the result/finding in standard units}
#'   \item{VSSTRESU}{Character string indicating the standard units}
#'   \item{VSSTAT}{Character string indicating the completion status}
#'   \item{VSLOC}{Character string indicating the location of the measurement}
#'   \item{VSBLFL}{Character string indicating whether the value is a baseline flag}
#'   \item{VISITNUM}{Numeric value indicating the visit number}
#'   \item{VISIT}{Character string indicating the visit name}
#'   \item{VISITDY}{Numeric value indicating the planned study day of the visit}
#'   \item{VSDTC}{Character string indicating the date/time of measurements}
#'   \item{VSDY}{Numeric value indicating the study day of vital signs}
#'   \item{VSTPT}{Character string indicating the planned time point name}
#'   \item{VSTPTNUM}{Numeric value indicating the planned time point number}
#'   \item{VSELTM}{Character string indicating the planned elapsed time from the time point reference}
#'   \item{VSTPTREF}{Character string indicating the time point reference}
#' }
#' @source Data taken from the mice package version 3.18.0.
#' @usage data(walking_df)
#' @export
load("data/walking_df.rda")
NULL


#' Vital Signs Dataset
#'
#' This dataset, admiral_vs_tbl_df, is a tibble data frame containing a CDISC SDTM VS dataset
#' from the CDISC pilot project. It includes study identifiers, subject identifiers,
#' vital signs test codes, test names, measurement results, visit information, and
#' related metadata. The dataset follows the structure of clinical trial data and
#' provides standardized vital signs information.
#'
#' The dataset name has been kept as 'admiral_vs_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been
#' modified in any way.
#'
#' @name admiral_vs_tbl_df
#' @format A data frame with 29,643 observations and 24 variables:
#' \describe{
#'   \item{STUDYID}{Character string indicating the study identifier}
#'   \item{DOMAIN}{Character string indicating the domain abbreviation}
#'   \item{USUBJID}{Character string indicating the unique subject identifier}
#'   \item{VSSEQ}{Numeric value indicating the sequence number}
#'   \item{VSTESTCD}{Character string indicating the vital signs test short name}
#'   \item{VSTEST}{Character string indicating the vital signs test name}
#'   \item{VSPOS}{Character string indicating the subject’s position during measurement}
#'   \item{VSORRES}{Character string indicating the result or finding in original units}
#'   \item{VSORRESU}{Character string indicating the original measurement units}
#'   \item{VSSTRESC}{Character string indicating the character result/finding in standard format}
#'   \item{VSSTRESN}{Numeric value indicating the result/finding in standard units}
#'   \item{VSSTRESU}{Character string indicating the standard units}
#'   \item{VSSTAT}{Character string indicating the completion status}
#'   \item{VSLOC}{Character string indicating the location of the measurement}
#'   \item{VSBLFL}{Character string indicating whether the value is a baseline flag}
#'   \item{VISITNUM}{Numeric value indicating the visit number}
#'   \item{VISIT}{Character string indicating the visit name}
#'   \item{VISITDY}{Numeric value indicating the planned study day of the visit}
#'   \item{VSDTC}{Character string indicating the date/time of measurements}
#'   \item{VSDY}{Numeric value indicating the study day of vital signs}
#'   \item{VSTPT}{Character string indicating the planned time point name}
#'   \item{VSTPTNUM}{Numeric value indicating the planned time point number}
#'   \item{VSELTM}{Character string indicating the planned elapsed time from the time point reference}
#'   \item{VSTPTREF}{Character string indicating the time point reference}
#' }
#' @source Data taken from the admiral.test package version 0.7.0.
#' @usage data(admiral_vs_tbl_df)
#' @export
load("data/admiral_vs_tbl_df.rda")
NULL


#' Vital Signs Dataset - Pediatrics
#'
#' This dataset, vs_peds_tbl_df, is a tibble data frame containing an updated SDTM VS dataset
#' with anthropometric measurements for pediatric patients. It includes study identifiers,
#' subject identifiers, vital signs test codes, test names, measurement results,
#' visit information, evaluator details, and epoch classification. The dataset follows
#' the CDISC SDTM structure and is tailored for pediatric populations.
#'
#' The dataset name has been kept as 'vs_peds_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been
#' modified in any way.
#'
#' @name vs_peds_tbl_df
#' @format A data frame with 164 observations and 26 variables:
#' \describe{
#'   \item{STUDYID}{Character string indicating the study identifier}
#'   \item{DOMAIN}{Character string indicating the domain abbreviation}
#'   \item{USUBJID}{Character string indicating the unique subject identifier}
#'   \item{VSSEQ}{Integer value indicating the sequence number}
#'   \item{VSTESTCD}{Character string indicating the vital signs test short name}
#'   \item{VSTEST}{Character string indicating the vital signs test name}
#'   \item{VSPOS}{Character string indicating the subject’s position during measurement}
#'   \item{VSORRES}{Character string indicating the result or finding in original units}
#'   \item{VSORRESU}{Character string indicating the original measurement units}
#'   \item{VSSTRESC}{Character string indicating the character result/finding in standard format}
#'   \item{VSSTRESN}{Numeric value indicating the result/finding in standard units}
#'   \item{VSSTRESU}{Character string indicating the standard units}
#'   \item{VSSTAT}{Character string indicating the completion status}
#'   \item{VSLOC}{Character string indicating the location of the measurement}
#'   \item{VSBLFL}{Character string indicating whether the value is a baseline flag}
#'   \item{VISITNUM}{Numeric value indicating the visit number}
#'   \item{VISIT}{Character string indicating the visit name}
#'   \item{VISITDY}{Integer value indicating the planned study day of the visit}
#'   \item{VSDTC}{Character string indicating the date/time of measurements}
#'   \item{VSDY}{Integer value indicating the study day of vital signs}
#'   \item{VSTPT}{Character string indicating the planned time point name}
#'   \item{VSTPTNUM}{Numeric value indicating the planned time point number}
#'   \item{VSELTM}{Character string indicating the planned elapsed time from the time point reference}
#'   \item{VSTPTREF}{Character string indicating the time point reference}
#'   \item{VSEVAL}{Character string indicating the evaluator}
#'   \item{EPOCH}{Character string indicating the epoch classification}
#' }
#' @source Data taken from the pharmaversesdtm package version 1.3.1.
#' @usage data(vs_peds_tbl_df)
#' @export
load("data/vs_peds_tbl_df.rda")
NULL


#' Data from Patients with Acute Rheumatoid Arthritis
#'
#' This dataset, rheuma_df, is a data frame containing data from patients with
#' acute rheumatoid arthritis. A new agent was compared with an active control,
#' and each patient was evaluated on a five-point assessment scale of improvement.
#'
#' The dataset name has been kept as 'rheuma_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name rheuma_df
#' @format A data frame with 10 observations and 3 variables:
#' \describe{
#'   \item{Drug}{Factor indicating the treatment group (2 levels: new agent or active control)}
#'   \item{Improvement}{Ordered factor indicating improvement on a five-point assessment scale}
#'   \item{n}{Integer indicating the number of patients in each category}
#' }
#' @source Data taken from the Fahrmeir package version 2016.5.31.
#' @usage data(rheuma_df)
#' @export
load("data/rheuma_df.rda")
NULL


#' Data of 2,585 Participants in the Osteoarthritis Initiative (OAI) Project
#'
#' This dataset, osteoarthritis_df, is a data frame containing demographic and clinical
#' information of 2,585 individuals with or at risk of knee osteoarthritis. The dataset
#' includes variables such as age, sex, body mass index (BMI), race, smoking status,
#' and osteoarthritis-related outcomes. Some variables contain missing values, including
#' BMI (quantitative), race (categorical), smoking status (binary), and knee osteoarthritis
#' status at follow-up (binary).
#'
#' The dataset name has been kept as 'osteoarthritis_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name osteoarthritis_df
#' @format A data frame with 2,585 observations and 7 variables:
#' \describe{
#'   \item{AGE}{Integer vector indicating the participant's age}
#'   \item{SEX}{Factor indicating the participant's sex (2 levels)}
#'   \item{BMI}{Numeric vector indicating the body mass index of the participant}
#'   \item{RAC}{Factor indicating the participant's race (4 levels)}
#'   \item{SMK}{Factor indicating the smoking status (2 levels)}
#'   \item{OSP}{Factor indicating osteoarthritis status at baseline (2 levels)}
#'   \item{KOA}{Factor indicating knee osteoarthritis status at follow-up (2 levels)}
#' }
#' @source Data taken from the MatchThem package version 1.2.1.
#' @usage data(osteoarthritis_df)
#' @export
load("data/osteoarthritis_df.rda")
NULL


#' Accelerometer Data Example
#'
#' Data example from the 2003-2004 National Health and Nutrition Examination Survey (NHANES)
#' dataset. The dataset is available at the website:
#' \url{http://wwwn.cdc.gov/nchs/nhanes/search/nhanes03_04.aspx}.
#' This example only includes 218 individuals, which gives 1,526 daily profiles,
#' from a total of 7,176 participants in the physical activity survey.
#'
#' The dataset name has been kept as 'acceldata_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is stored as a list containing multiple data frames.
#' The original content has not been modified in any way.
#'
#' @name acceldata_list
#' @format A list with 4 components:
#' \describe{
#'   \item{PA}{A data frame with 1,526 observations and 1,440 variables.
#'   Each row corresponds to a daily profile, with columns V1 to V1440 representing
#'   accelerometer counts recorded minute by minute throughout the day.}
#'   \item{label}{A data frame with 1,526 observations and 3 variables:
#'   \describe{
#'     \item{personid}{Integer identifying the individual}
#'     \item{daylabel}{Integer indicating the label of the day}
#'     \item{personid2}{Integer providing an alternative identifier of the individual}
#'   }}
#'   \item{flag}{A data frame with 1,526 observations and 1,440 variables.
#'   The structure mirrors that of PA, with values indicating data quality
#'   (e.g., 0 = valid, 1 = flagged).}
#'   \item{demo}{A data frame containing demographic information for the 218 participants
#'   with 5 variables:
#'   \describe{
#'     \item{personid}{Integer identifying the participant}
#'     \item{age}{Integer indicating age}
#'     \item{sex}{Factor with 2 levels indicating sex}
#'     \item{bmi}{Numeric variable with body mass index}
#'     \item{race}{Factor with 2 levels indicating race}
#'   }}
#' }
#' @source Data taken from the accelmissing package version 2.2.
#' @usage data(acceldata_list)
#' @export
load("data/acceldata_list.rda")
NULL


#' Accelerometer Data Example 2
#'
#' Data example from the 2003-2004 National Health and Nutrition Examination Survey (NHANES)
#' dataset. This example includes 184 individuals, giving 1,288 daily profiles. It only includes
#' valid subjects with at least three complete days, obtained as a subset of \code{acceldata_list}
#' using the function \code{valid.subjects()}.
#'
#' The dataset name has been kept as 'acceldata2_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is stored as a list containing multiple components.
#' The original content has not been modified in any way.
#'
#' @name acceldata2_list
#' @format A list with 4 components:
#' \describe{
#'   \item{PA}{An integer matrix with 1,288 rows (daily profiles) and 1,440 columns
#'   (minute-by-minute accelerometer counts).}
#'   \item{label}{A data frame with 1,288 observations and 3 variables:
#'   \describe{
#'     \item{id}{Integer identifier of the profile}
#'     \item{day}{Integer indicating the day label}
#'     \item{personid2}{Integer providing an alternative identifier of the individual}
#'   }}
#'   \item{flag}{A numeric matrix with the same dimensions as \code{PA}, containing quality
#'   indicators (e.g., 0 = valid, 1 = flagged).}
#'   \item{demo}{A data frame with 184 observations and 5 variables:
#'   \describe{
#'     \item{personid}{Integer identifying the participant}
#'     \item{age}{Integer indicating age}
#'     \item{sex}{Factor with 2 levels indicating sex}
#'     \item{bmi}{Numeric variable with body mass index}
#'     \item{race}{Factor with 2 levels indicating race}
#'   }}
#' }
#' @source Data taken from the accelmissing package version 2.2.
#' @usage data(acceldata2_list)
#' @export
load("data/acceldata2_list.rda")
NULL


#' Accelerometer Data Example with Imputations
#'
#' This dataset, accelimp_list, is a list containing imputed accelerometer data from the
#' 2003-2004 National Health and Nutrition Examination Survey (NHANES). It includes
#' 184 individuals, resulting in 1,288 daily profiles obtained after applying
#' \code{accel.impute()} to the raw accelerometer data.
#'
#' The dataset name has been kept as 'accelimp_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is stored as a list. The original content has not been modified
#' in any way.
#'
#' @name accelimp_list
#' @format A list with 1 component:
#' \describe{
#'   \item{imp1}{A numeric matrix with 1,288 rows (daily profiles) and 1,440 columns
#'   (minute-by-minute accelerometer counts), containing the imputed accelerometer data.}
#' }
#' @source Data taken from the accelmissing package version 2.2.
#' @usage data(accelimp_list)
#' @export
load("data/accelimp_list.rda")
NULL


#' Running Injury Clinic Kinematic Dataset
#'
#' This dataset, run_biomech_tbl_df, is a tibble containing biomechanics data of human
#' subjects (\eqn{N = 1,832}) running on a treadmill. Data include 3D marker positions
#' over trials ranging from 25 to 60 seconds. In addition, demographic information and
#' calculated variables of interest (such as step width, stride rate, peak knee flexion angle)
#' are provided. The dataset also comes with sample processing code and data analysis tutorials.
#'
#' The dataset name has been kept as 'run_biomech_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is stored as a tibble (data frame). The original content has not been modified
#' in any way.
#'
#' @name run_biomech_tbl_df
#' @format A tibble with 1,832 observations and 26 variables:
#' \describe{
#'   \item{sub_id}{Numeric identifier for the subject.}
#'   \item{datestring}{Character string indicating the recording date.}
#'   \item{filename}{Character string specifying the source filename.}
#'   \item{speed_r}{Numeric value for treadmill running speed.}
#'   \item{age}{Numeric value for subject's age.}
#'   \item{Height}{Numeric value for subject's height (in cm).}
#'   \item{Weight}{Numeric value for subject's weight (in kg).}
#'   \item{Gender}{Character string indicating subject's gender.}
#'   \item{DominantLeg}{Character string indicating the dominant leg.}
#'   \item{InjDefn}{Character string indicating the injury definition.}
#'   \item{InjJoint}{Character string indicating the injured joint.}
#'   \item{InjSide}{Character string indicating the injured side.}
#'   \item{SpecInjury}{Character string specifying the injury type.}
#'   \item{InjDuration}{Numeric value for injury duration (in weeks).}
#'   \item{InjJoint2}{Character string for additional injured joint information.}
#'   \item{InjSide2}{Character string for additional injured side information.}
#'   \item{SpecInjury2}{Character string for additional specific injury information.}
#'   \item{Activities}{Character string indicating physical activities.}
#'   \item{Level}{Character string indicating running level.}
#'   \item{YrsRunning}{Numeric value for years of running experience.}
#'   \item{RaceDistance}{Character string indicating typical race distance.}
#'   \item{RaceTimeHrs}{Character string for race completion time (hours).}
#'   \item{RaceTimeMins}{Character string for race completion time (minutes).}
#'   \item{RaceTimeSecs}{Character string for race completion time (seconds).}
#'   \item{YrPR}{Numeric value for year of personal record.}
#'   \item{NumRaces}{Numeric value indicating number of races completed.}
#' }
#' @source Data taken from figshare:
#' \url{https://plus.figshare.com/articles/dataset/Running_Injury_Clinic_Kinematic_Dataset/24255795/1?file=42637039}
#' @usage data(run_biomech_tbl_df)
#' @export
load("data/run_biomech_tbl_df.rda")
NULL


#' Running Injury Clinic Kinematic Dataset (Walking)
#'
#' This dataset, walk_biomech_tbl_df, is a tibble containing biomechanics data of human
#' subjects (\eqn{N = 2,088}) walking on a treadmill. Data include 3D marker positions
#' over trials ranging from 25 to 60 seconds. In addition, demographic information and
#' calculated variables of interest (such as step width, stride rate, peak knee flexion angle)
#' are provided. The dataset also comes with sample processing code and data analysis tutorials.
#'
#' The dataset name has been kept as 'walk_biomech_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' healthmotionR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is stored as a tibble (data frame). The original content has not been modified
#' in any way.
#'
#' @name walk_biomech_tbl_df
#' @format A tibble with 2,088 observations and 26 variables:
#' \describe{
#'   \item{sub_id}{Numeric identifier for the subject.}
#'   \item{datestring}{Datetime object indicating the recording date.}
#'   \item{filename}{Character string specifying the source filename.}
#'   \item{speed_w}{Numeric value for treadmill walking speed.}
#'   \item{age}{Numeric value for subject's age.}
#'   \item{Height}{Numeric value for subject's height (in cm).}
#'   \item{Weight}{Numeric value for subject's weight (in kg).}
#'   \item{Gender}{Character string indicating subject's gender.}
#'   \item{DominantLeg}{Character string indicating the dominant leg.}
#'   \item{InjDefn}{Character string indicating the injury definition.}
#'   \item{InjJoint}{Character string indicating the injured joint.}
#'   \item{InjSide}{Character string indicating the injured side.}
#'   \item{SpecInjury}{Character string specifying the injury type.}
#'   \item{InjDuration}{Numeric value for injury duration (in weeks).}
#'   \item{InjJoint2}{Character string for additional injured joint information.}
#'   \item{InjSide2}{Character string for additional injured side information.}
#'   \item{SpecInjury2}{Character string for additional specific injury information.}
#'   \item{Activities}{Character string indicating physical activities.}
#'   \item{Level}{Character string indicating running level.}
#'   \item{YrsRunning}{Numeric value for years of running experience.}
#'   \item{RaceDistance}{Character string indicating typical race distance.}
#'   \item{RaceTimeHrs}{Character string for race completion time (hours).}
#'   \item{RaceTimeMins}{Character string for race completion time (minutes).}
#'   \item{RaceTimeSecs}{Character string for race completion time (seconds).}
#'   \item{YrPR}{Numeric value for year of personal record.}
#'   \item{NumRaces}{Numeric value indicating number of races completed.}
#' }
#' @source Data taken from figshare:
#' \url{https://plus.figshare.com/articles/dataset/Running_Injury_Clinic_Kinematic_Dataset/24255795/1?file=42637045}
#' @usage data(walk_biomech_tbl_df)
#' @export
load("data/walk_biomech_tbl_df.rda")
NULL


#' KinData – Kinematics Dataset
#'
#' This dataset, \code{KinData_df}, is a data frame containing part of the motion capture
#' dataset freely available in the publication by Ansuini et al. (2015). It provides
#' detailed kinematic measurements of grasping movements across multiple conditions.
#'
#' The dataset includes information on wrist velocity, grip aperture, wrist height,
#' and three-dimensional coordinates of the index finger, thumb, and finger plane.
#' Each measurement is recorded across 10 equally spaced points of the movement
#' trajectory. The variable \code{Object.Size} indicates the size of the object being grasped.
#'
#' The dataset name has been kept as \code{KinData_df} to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' \pkg{healthmotionR} package and assists users in identifying its specific characteristics.
#' The suffix \code{_df} indicates that the dataset is a data frame. The original content has
#' not been modified in any way.
#'
#' @name KinData_df
#' @format A data frame with the following variables:
#' \describe{
#'   \item{Grip_Aperture_01}{numeric}
#'   \item{Grip_Aperture_02}{numeric}
#'   \item{Grip_Aperture_03}{numeric}
#'   \item{Grip_Aperture_04}{numeric}
#'   \item{Grip_Aperture_05}{numeric}
#'   \item{Grip_Aperture_06}{numeric}
#'   \item{Grip_Aperture_07}{numeric}
#'   \item{Grip_Aperture_08}{numeric}
#'   \item{Grip_Aperture_09}{numeric}
#'   \item{Grip_Aperture_10}{numeric}
#'   \item{Object.Size}{numeric}
#'   \item{Wrist_Height_01}{numeric}
#'   \item{Wrist_Height_02}{numeric}
#'   \item{Wrist_Height_03}{numeric}
#'   \item{Wrist_Height_04}{numeric}
#'   \item{Wrist_Height_05}{numeric}
#'   \item{Wrist_Height_06}{numeric}
#'   \item{Wrist_Height_07}{numeric}
#'   \item{Wrist_Height_08}{numeric}
#'   \item{Wrist_Height_09}{numeric}
#'   \item{Wrist_Height_10}{numeric}
#'   \item{Wrist_Velocity_01}{numeric}
#'   \item{Wrist_Velocity_02}{numeric}
#'   \item{Wrist_Velocity_03}{numeric}
#'   \item{Wrist_Velocity_04}{numeric}
#'   \item{Wrist_Velocity_05}{numeric}
#'   \item{Wrist_Velocity_06}{numeric}
#'   \item{Wrist_Velocity_07}{numeric}
#'   \item{Wrist_Velocity_08}{numeric}
#'   \item{Wrist_Velocity_09}{numeric}
#'   \item{Wrist_Velocity_10}{numeric}
#'   \item{x_finger_plane_01}{numeric}
#'   \item{x_finger_plane_02}{numeric}
#'   \item{x_finger_plane_03}{numeric}
#'   \item{x_finger_plane_04}{numeric}
#'   \item{x_finger_plane_05}{numeric}
#'   \item{x_finger_plane_06}{numeric}
#'   \item{x_finger_plane_07}{numeric}
#'   \item{x_finger_plane_08}{numeric}
#'   \item{x_finger_plane_09}{numeric}
#'   \item{x_finger_plane_10}{numeric}
#'   \item{x_index_01}{numeric}
#'   \item{x_index_02}{numeric}
#'   \item{x_index_03}{numeric}
#'   \item{x_index_04}{numeric}
#'   \item{x_index_05}{numeric}
#'   \item{x_index_06}{numeric}
#'   \item{x_index_07}{numeric}
#'   \item{x_index_08}{numeric}
#'   \item{x_index_09}{numeric}
#'   \item{x_index_10}{numeric}
#'   \item{x_thumb_01}{numeric}
#'   \item{x_thumb_02}{numeric}
#'   \item{x_thumb_03}{numeric}
#'   \item{x_thumb_04}{numeric}
#'   \item{x_thumb_05}{numeric}
#'   \item{x_thumb_06}{numeric}
#'   \item{x_thumb_07}{numeric}
#'   \item{x_thumb_08}{numeric}
#'   \item{x_thumb_09}{numeric}
#'   \item{x_thumb_10}{numeric}
#'   \item{y_finger_plane_01}{numeric}
#'   \item{y_finger_plane_02}{numeric}
#'   \item{y_finger_plane_03}{numeric}
#'   \item{y_finger_plane_04}{numeric}
#'   \item{y_finger_plane_05}{numeric}
#'   \item{y_finger_plane_06}{numeric}
#'   \item{y_finger_plane_07}{numeric}
#'   \item{y_finger_plane_08}{numeric}
#'   \item{y_finger_plane_09}{numeric}
#'   \item{y_finger_plane_10}{numeric}
#'   \item{y_index_01}{numeric}
#'   \item{y_index_02}{numeric}
#'   \item{y_index_03}{numeric}
#'   \item{y_index_04}{numeric}
#'   \item{y_index_05}{numeric}
#'   \item{y_index_06}{numeric}
#'   \item{y_index_07}{numeric}
#'   \item{y_index_08}{numeric}
#'   \item{y_index_09}{numeric}
#'   \item{y_index_10}{numeric}
#'   \item{y_thumb_01}{numeric}
#'   \item{y_thumb_02}{numeric}
#'   \item{y_thumb_03}{numeric}
#'   \item{y_thumb_04}{numeric}
#'   \item{y_thumb_05}{numeric}
#'   \item{y_thumb_06}{numeric}
#'   \item{y_thumb_07}{numeric}
#'   \item{y_thumb_08}{numeric}
#'   \item{y_thumb_09}{numeric}
#'   \item{y_thumb_10}{numeric}
#'   \item{z_finger_plane_01}{numeric}
#'   \item{z_finger_plane_02}{numeric}
#'   \item{z_finger_plane_03}{numeric}
#'   \item{z_finger_plane_04}{numeric}
#'   \item{z_finger_plane_05}{numeric}
#'   \item{z_finger_plane_06}{numeric}
#'   \item{z_finger_plane_07}{numeric}
#'   \item{z_finger_plane_08}{numeric}
#'   \item{z_finger_plane_09}{numeric}
#'   \item{z_finger_plane_10}{numeric}
#'   \item{z_index_01}{numeric}
#'   \item{z_index_02}{numeric}
#'   \item{z_index_03}{numeric}
#'   \item{z_index_04}{numeric}
#'   \item{z_index_05}{numeric}
#'   \item{z_index_06}{numeric}
#'   \item{z_index_07}{numeric}
#'   \item{z_index_08}{numeric}
#'   \item{z_index_09}{numeric}
#'   \item{z_index_10}{numeric}
#'   \item{z_thumb_01}{numeric}
#'   \item{z_thumb_02}{numeric}
#'   \item{z_thumb_03}{numeric}
#'   \item{z_thumb_04}{numeric}
#'   \item{z_thumb_05}{numeric}
#'   \item{z_thumb_06}{numeric}
#'   \item{z_thumb_07}{numeric}
#'   \item{z_thumb_08}{numeric}
#'   \item{z_thumb_09}{numeric}
#'   \item{z_thumb_10}{numeric}
#' }
#' @source Data taken from the \pkg{PredPsych} package version 0.4.
#' @usage data(KinData_df)
#' @export
load("data/KinData_df.rda")
NULL
